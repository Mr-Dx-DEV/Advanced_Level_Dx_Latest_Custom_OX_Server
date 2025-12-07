local Framework, frameworkName = getFramework()
local users = {}
local duty = {}

-- -- MySQL bağlantısı
local MySQL = exports.oxmysql

function getJob(id, identifier)
    local data = {}

    if not identifier then
        local Player = getPlayer(id)

        if Player then
            if frameworkName == "esx" then
                data = {
                    name = Framework.GetPlayerFromId(id).job.name,
                    label = Framework.GetPlayerFromId(id).job.grade_label,
                    grade = Framework.GetPlayerFromId(id).job.grade,
                    salary = getSalary(Framework.GetPlayerFromId(id).job.name, Framework.GetPlayerFromId(id).job.grade)
                }
            elseif frameworkName == 'qbox' then
                data = {
                    name = Player.PlayerData.job.name,
                    label = Player.PlayerData.job.grade.name,
                    grade = Player.PlayerData.job.grade.level,
                    salary = Player.PlayerData.job.payment
                }
            else
                data = {
                    name = Player.PlayerData.job.name,
                    label = Player.PlayerData.job.grade.name,
                    grade = Player.PlayerData.job.grade.level,
                    salary = Player.PlayerData.job.grade.payment
                }
            end
        else
            data = {
                name = "none",
                label = "Not Found",
                grade = 0
            }
            debuk("player's job data not found (1)")
        end
    else
        if identifier then
            local Player = GetPlayerFromIdentifier(identifier)

            if Player then
                if frameworkName == "esx" then
                    data = {
                        name = Player.job.name,
                        label = Player.job.grade_label,
                        grade = Player.job.grade,
                        salary = getSalary(Player.job.name, Player.job.grade)
                    }
                elseif frameworkName == 'qbox' then
                    data = {
                        name = Player.PlayerData.job.name,
                        label = Player.PlayerData.job.grade.name,
                        grade = Player.PlayerData.job.grade.level,
                        salary = Player.PlayerData.job.payment
                    }
                else
                    data = {
                        name = Player.PlayerData.job.name,
                        label = Player.PlayerData.job.grade.name,
                        grade = Player.PlayerData.job.grade.level,
                        salary = Player.PlayerData.job.grade.payment
                    }
                end
            else
                if frameworkName == "esx" then
                    local fetch = MySQL:executeSync("SELECT job, job_grade FROM users WHERE identifier = ?", {identifier})
                    if fetch and fetch[1] then
                        data = {
                            name = fetch[1].job,
                            label = getGradeLabel(fetch[1].job, fetch[1].job_grade) or fetch[1].job,
                            grade = fetch[1].job_grade,
                            salary = getSalary(fetch[1].job, fetch[1].job_grade)
                        }
                    end
                else
                    local result = MySQL:executeSync('SELECT job FROM players WHERE citizenid = ?', {identifier})
    
                    if result and result[1] then
                        local job = json.decode(result[1].job)
                        if job then
                            local data = {
                                name = job.name,
                                label = job.grade.name,
                                grade = job.grade.level,
                                salary = job.grade.payment
                            }
                            return data
                        else
                            debuk("Job verisi çözümlenemedi: ", result[1].job)
                        end
                    else
                        debuk("CitizenID ile eşleşen bir kayıt bulunamadı: ", identifier)
                    end
                end
            end
        else
            data = {
                name = "none",
                label = "Not Found",
                grade = 0
            }
            debuk("player's job data not found (2)")
        end
    end

    return data
end

function getGang(id, identifier)
    local data = {}

    if frameworkName ~= "esx" then
        if not identifier then
            local Player = Framework.Functions.GetPlayer(id)
            
            if Player then
                data = {
                    name = Player.PlayerData.gang.name,
                    label = Player.PlayerData.gang.grade.name,
                    grade = Player.PlayerData.gang.grade.level,
                    salary = Player.PlayerData.gang.grade.payment
                }
            else
                data = {
                    name = "none",
                    label = "Not Found",
                    grade = 0
                }
                debuk("player's gang data not found (1)")
            end
        else
            if identifier then
                local Player = Framework.Functions.GetPlayerByCitizenId(identifier)
    
                if Player then
                    data = {
                        name = Player.PlayerData.gang.name,
                        label = Player.PlayerData.gang.grade.name,
                        grade = Player.PlayerData.gang.grade.level,
                        salary = Player.PlayerData.gang.grade.payment
                    }
                else
                    local result = MySQL:executeSync('SELECT gang FROM players WHERE citizenid = ?', {identifier})
    
                    if result and result[1] then
                        local gang = json.decode(result[1].gang)
                        if gang then
                            local data = {
                                name = gang.name,
                                label = gang.grade.name,
                                grade = gang.grade.level,
                                salary = gang.grade.payment
                            }
                            return data
                        else
                            local data = {
                                name = "none",
                                label = "Not Found",
                                grade = 0
                            }
                            debuk("player's gang data not found (2)")
                            return data
                        end
                    end
                end
            else
                data = {
                    name = "none",
                    label = "Not Found",
                    grade = 0
                }
                debuk("player's gang data not found (3)")
            end
        end
    else
        data = {
            name = "none",
            label = "Not Found",
            grade = 0
        }
    end
    
    return data
end

function getGradeLabel(job, grade)
    local Info = MySQL:executeSync("SELECT label FROM job_grades WHERE job_name = ? AND grade = ?", {job, grade})
    if Info and Info[1] then
        return Info[1].label
    else
        return nil
    end
end

lib.callback.register('savana-bossmenu:access', function(source, store)
    local source = source
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid
    
    -- Varsayılan izinler
    local defaultPermissions = {
        manager = false,
        storage = false,
        wardrobe = false,
        money = false,
    }

    -- İlk sorgu: Dükkan ve izin kontrolü
    local result = MySQL:executeSync(
        'SELECT s.type, p.permission AS boss_permission FROM savana_bossmenu_shops s LEFT JOIN savana_bossmenu_permissions p ON s.id = p.shop_id AND p.permission IS NOT NULL WHERE s.id = ?', 
        {store}
    )
    
    if result and result[1] then
        if Config.Shops[store] then
            if Config.Shops[store].type == "job" then
                local job = getJob(source)
                if store == job.name then
                    if store == job.name and Config.Shops[store]["bossGrade"] == job.grade then
                        return true
                    else
                        -- İkinci sorgu: Staff izin kontrolü (job için)
                        local staffPermission = MySQL:executeSync(
                            'SELECT permission FROM savana_bossmenu_permissions WHERE staff_id = ? AND shop_id = ?',
                            {identifier, store}
                        )
 
                        if not staffPermission or not staffPermission[1] then
                            -- Eğer kullanıcı yoksa, varsayılan izinleri ekle
                            MySQL:execute(
                                'INSERT INTO savana_bossmenu_permissions (staff_id, shop_id, permission) VALUES (?, ?, ?)',
                                {identifier, store, json.encode(defaultPermissions)}
                            )
                            return true
                        else
                            return true
                        end
                    end
                else
                    debuk('meslek tutmuyo')
                    return false
                end
            else
                local gang = getGang(source)
                if store == gang.name and Config.Shops[store]["bossGrade"] == gang.grade then
                    return true
                else
                    -- İkinci sorgu: Staff izin kontrolü (gang için)
                    local staffPermission = MySQL:executeSync(
                        'SELECT permission FROM savana_bossmenu_permissions WHERE staff_id = ? AND shop_id = ?',
                        {identifier, store}
                    )
                    
                    if not staffPermission or not staffPermission[1] then
                        -- Eğer kullanıcı yoksa, varsayılan izinleri ekle
                        MySQL:execute(
                            'INSERT INTO savana_bossmenu_permissions (staff_id, shop_id, permission) VALUES (?, ?, ?)',
                            {identifier, store, json.encode(defaultPermissions)}
                        )
                        return false
                    else
                        -- Kullanıcı izinlerini kontrol et
                        local permissions = json.decode(staffPermission[1].permission)
                        if permissions and permissions.boss then
                            return permissions.boss
                        else
                            return false
                        end
                    end
                end
            end
        else
            debuk('Mağaza verisi bulunamadı (2): '..store)
            return false
        end
    else
        debuk('Mağaza verisi bulunamadı (1): '..store)
        return false
    end
end)

lib.callback.register('savana-bossmenu:getPermission', function(source, store, identifier)
    -- Eğer identifier yoksa, oyuncunun kimliğini al
    local source = source

    if not identifier then
        local Player = getPlayer(source)
        identifier = Player.identifier or Player.PlayerData.citizenid
    end

    -- İzinleri veritabanından sorgula
    local success, permissions = pcall(function()
        return exports.oxmysql:executeSync('SELECT permission FROM savana_bossmenu_permissions WHERE staff_id = ? AND shop_id = ?', {identifier, store})
    end)

    if success then
        -- Eğer izinler yoksa, yeni izinleri ekle
        if #permissions == 0 then
            -- Varsayılan izinler
            local defaultPermissions = {
                manager = false,
                storage = false,
                wardrobe = false,
                money = false
            }

            -- permissions tablosuna personel için yeni bir giriş ekle
            local insertSuccess = pcall(function()
                local permissionJson = json.encode(defaultPermissions)
                exports.oxmysql:executeSync('INSERT INTO savana_bossmenu_permissions (staff_id, shop_id, permission) VALUES (?, ?, ?)', 
                    {identifier, store, permissionJson})
            end)

            if insertSuccess then
                return defaultPermissions
            else
                debuk('İzin kaydı eklenemedi: ' .. store)
                return false
            end
        else
            -- Eğer izinler varsa, onları döndür
            local permissionData = json.decode(permissions[1].permission)
            return permissionData
        end
    else
        debuk('Veritabanı sorgusu başarısız oldu: ' .. store)
        return false
    end
end)

lib.callback.register('savana-bossmenu:getGrades', function(source, store, identifier)
    local source = source
    local grades = {}

    if frameworkName == "esx" then
        if store then
            local job = Framework.GetJobs(store)
            
            if job then
                for grade, data in pairs(job[store]["grades"]) do
                    grades[grade] = data.label
                end
            else
                debuk('job not found')
            end
        end
    else
        local job

        if Config.Shops[store].type == "job" then
            job = Framework.Shared.Jobs[store]
        else
            job = Framework.Shared.Gangs[store]
        end
        if job then
            for grade, data in pairs(job.grades) do
                grades[grade] = data.name
            end
        end
    end

    local myJob
    if Config.Shops[store].type == "job" then
        myJob = getJob(nil, identifier)
    else
        myJob = getGang(nil, identifier)
    end

    return {
        grades = grades,
        myGrade = myJob.grade,
        name = getName(identifier),
    }
end)

RegisterNetEvent('savana-bossmenu:saveImage')
AddEventHandler('savana-bossmenu:saveImage', function (image)
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid

    local success = MySQL:executeSync('UPDATE savana_bossmenu_staffs SET image = ? WHERE id = ?', 
    {image or "public/avatar.png", identifier})
end)

lib.callback.register('savana-bossmenu:server:randomBucket', function(source)
    local src = source
    SetPlayerRoutingBucket(src, 3131 + tonumber(src) + math.random(1, 1000))
    return true
end)

lib.callback.register('savana-bossmenu:server:0bucket', function(source)
    local src = source
    SetPlayerRoutingBucket(src, 0)
    return true
end)

lib.callback.register('savana-bossmenu:updateGrade', function(source, store, data)
    local source = source
    local Player = GetPlayerFromIdentifier(data.id)

    if frameworkName == "esx" then
        Player.setJob(store, tonumber(data.grade))
    else
        if Player then
            if Config.Shops[store].type == "job" then
                Player.Functions.SetJob(store, tonumber(data.grade))
            else
                Player.Functions.SetGang(store, tonumber(data.grade))
            end
        else
            if Config.Shops[store].type == "job" then
                local job = getJob(source)
                local jobInfo = Framework.Shared.Jobs[job.name]

                for gradeLevel, gradeInfo in pairs(jobInfo.grades) do
                    if tonumber(gradeLevel) == tonumber(data.grade) then
                        local save = {
                            name = gradeInfo.name,
                            isboss = tostring(gradeInfo.isboss),
                            payment = gradeInfo.payment,
                            level = gradeLevel
                        }

                        MySQL.update('UPDATE players SET job = ? WHERE citizenid = ?', {json.encode({name = store, grade = save}), data.id})
                        break
                    end
                end
            else
                local gang = getGang(source)
                local gangInfo = Framework.Shared.Gangs[gang.name]

                for gradeLevel, gradeInfo in pairs(gangInfo.grades) do
                    if tonumber(gradeLevel) == tonumber(data.grade) then
                        local save = {
                            name = gradeInfo.name,
                            isboss = tostring(gradeInfo.isboss),
                            level = gradeLevel
                        }

                        MySQL.update('UPDATE players SET gang = ? WHERE citizenid = ?', {json.encode({name = store, grade = save}), data.id})
                        break
                    end
                end
            end
        end
    end

    return true
end)

lib.callback.register('savana-bossmenu:updatePermission', function(source, store, data)
    local identifier = data.id
 
    if not identifier then
        debuk('Invalid identifier provided')
        return false
    end

    -- Mevcut izinleri al
    local currentPermissions = MySQL:executeSync('SELECT permission FROM savana_bossmenu_permissions WHERE staff_id = ? AND shop_id = ?', 
        {identifier, store})
    
    if not currentPermissions or #currentPermissions == 0 then
        -- Eğer kayıt yoksa, yeni bir kayıt oluştur
        local defaultPermissions = {
            manager = false,
            storage = false,
            wardrobe = false,
            money = false
        }
        -- Gelen veriyi güncelle
        defaultPermissions[data.name] = not defaultPermissions[data.name]
        
        local success = MySQL:executeSync('INSERT INTO savana_bossmenu_permissions (staff_id, shop_id, permission) VALUES (?, ?, ?)',
            {identifier, store, json.encode(defaultPermissions)})
        
        if success then
            return true
        else
            debuk('Failed to create new permissions')
            return false
        end
    else
        -- Mevcut izinleri JSON'dan çöz
        local permissions = json.decode(currentPermissions[1].permission)
        if not permissions then
            debuk('Failed to decode existing permissions')
            return false
        end
        
        -- İzni tersine çevir (toggle)
        permissions[data.name] = not (permissions[data.name] or false)
        
        -- Güncellenmiş izinleri kaydet
        local success = MySQL:executeSync('UPDATE savana_bossmenu_permissions SET permission = ? WHERE staff_id = ? AND shop_id = ?',
            {json.encode(permissions), identifier, store})
        
        if success then
            return true
        else
            debuk('Failed to update permissions')
            return false
        end
    end
end)

lib.callback.register('savana-bossmenu:getData', function(source, store)
    local source = source
    local Player = getPlayer(source)
    local myIdentifier = Player.identifier or Player.PlayerData.citizenid
    
    local shopData = MySQL:executeSync('SELECT * FROM savana_bossmenu_shops WHERE id = ?', {store})
    
    if shopData and shopData[1] then
        local staffs = getStaffs(store)
        local players = {}
        
        for _, identifier in pairs(staffs) do
            local staffData = MySQL:executeSync('SELECT * FROM savana_bossmenu_staffs WHERE id = ? AND shop_id = ?', {identifier, store})
            if staffData and staffData[1] then
                local time = staffData[1].time or 0
                local job = getJob(nil, identifier)
                local gang = getGang(nil, identifier)
                players[identifier] = {
                    name = getName(identifier),
                    job = Config.Shops[store].type == "job" and job.label or gang.label,
                    time = time,
                    salary = Config.Shops[store].type == "job" and job.salary or 0,
                    duty = duty[identifier] or "off",
                    image = staffData[1].image or false,
                    online = GetPlayerFromIdentifier(identifier) or false
                }
            end
        end
        
        local money = 0
        if frameworkName == "esx" then
            money = Player.getMoney()
        else
            money = Player.PlayerData.money["cash"]
        end
        
        local myJob
        if Config.Shops[store].type == "job" then
            myJob = getJob(source)
        else
            myJob = getGang(source)
        end
        
        -- Güvenli bir şekilde izinleri al
        local myPermissions = MySQL:executeSync('SELECT permission FROM savana_bossmenu_permissions WHERE staff_id = ? AND shop_id = ?', {myIdentifier, store})
        local permissionData = {}
        
        -- İzinler varsa JSON'dan çöz, yoksa varsayılan izinleri kullan
        if myPermissions and myPermissions[1] and myPermissions[1].permission then
            permissionData = json.decode(myPermissions[1].permission)
        else
            -- Varsayılan izinleri ayarla
            permissionData = {
                manager = false,
                storage = false,
                wardrobe = false,
                money = false
            }
            
            -- Yeni izinleri veritabanına kaydet
            MySQL:executeSync('INSERT INTO savana_bossmenu_permissions (staff_id, shop_id, permission) VALUES (?, ?, ?)', 
                {myIdentifier, store, json.encode(permissionData)})
        end

        local transactions = exports.oxmysql:executeSync('SELECT * FROM savana_bossmenu_transactions WHERE shop_id = ? ORDER BY date ASC LIMIT 15', {store})

        -- Tarihleri dönüştürme
        for _, transaction in ipairs(transactions) do
            transaction.date = os.date('%Y-%m-%d %H:%M:%S', math.floor(transaction.date / 1000)) -- Tarihi dönüştürüp güncelliyoruz
        end

        local yourData = MySQL:executeSync('SELECT * FROM savana_bossmenu_staffs WHERE id = ? AND shop_id = ?', {myIdentifier, store})

        return {
            players = players,
            name = getName(myIdentifier),
            money = money,
            balance = shopData[1].money,
            image = yourData[1].image,
            transaction = transactions,
            isBoss = store == myJob.name and Config.Shops[store]["bossGrade"] == myJob.grade,
            permissions = permissionData
        }
    else
        debuk('Store data not found (3): '..store)
        return false
    end
end)

function getSalary(job, grade)
    local Info = MySQL:executeSync("SELECT salary FROM job_grades WHERE job_name = ? AND grade = ?", {job, grade})
    if Info and Info[1] then
        return Info[1].salary
    else
        return 0
    end
end

lib.callback.register('savana-bossmenu:duty', function(source, store)
    local source = source
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid

    -- Veritabanından personel bilgilerini çek
    local staffData = exports.oxmysql:executeSync('SELECT * FROM savana_bossmenu_staffs WHERE id = ? AND shop_id = ?', {identifier, store})

    if staffData and staffData[1] then
        -- Mevcut duty durumunu değiştir
        local newDuty = staffData[1].duty == "on" and "off" or "on"
        exports.oxmysql:update('UPDATE savana_bossmenu_staffs SET duty = ? WHERE id = ? AND shop_id = ?', {newDuty, identifier, store})
        duty[identifier] = newDuty
        return newDuty
    else
        -- Yeni kayıt ekle
        local job = getJob(source)

        if job.name == store then
            exports.oxmysql:insert('INSERT INTO savana_bossmenu_staffs (id, shop_id, name, job, duty) VALUES (?, ?, ?, ?, ?)', {identifier, store, getName(identifier), job.name, "on"})
            duty[identifier] = "on"
            return "on"
        end
        return false
    end
end)

lib.callback.register('savana-bossmenu:getNames', function(source, players)
    local names = {}

    for _, id in pairs(players) do
        local Player = getPlayer(id)
        local identifier = Player.identifier or Player.PlayerData.citizenid

        if id then
            names[id] = getName(identifier)
        else
            names[id] = "Not Found"
        end
    end

    return names
end)

lib.callback.register('savana-bossmenu:addPlayer', function(source, data, store)
    local Player = getPlayer(tonumber(data.id))
    local identifier = Player.identifier or Player.PlayerData.citizenid
    
    if Config.Shops[store].type == "job" then
        if frameworkName == "esx" then
            Player.setJob(store, 1)
        else
            Player.Functions.SetJob(store, 1)
        end
        
        -- Job için personel ekle
        local success = MySQL:executeSync(
            'INSERT INTO savana_bossmenu_staffs (id, shop_id, name, job) VALUES (?, ?, ?, ?)', 
            {identifier, store, getName(identifier), store}
        )
        
        if not success then
            debuk('Failed to add staff member (job)')
            return false
        end
    else
        -- Gang için personel ekle
        Player.Functions.SetGang(store, 0)
        
        local success = MySQL:executeSync(
            'INSERT INTO savana_bossmenu_staffs (id, shop_id, name, gang) VALUES (?, ?, ?, ?)', 
            {identifier, store, getName(identifier), store}
        )
        
        if not success then
            debuk('Failed to add staff member (gang)')
            return false
        end
    end
    
    refreshMembers(store)
    return true
end)

lib.callback.register('savana-bossmenu:deposit', function(source, store, data)
    local source = source
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid
    local value = tonumber(data.value) or 0
    
    local money
    if frameworkName == "esx" then
        money = Player.getMoney()
    else
        money = Player.PlayerData.money["cash"]
    end
    
    if money >= value then
        -- Para güncelleme sorgusu
        local updateSuccess = MySQL:executeSync('UPDATE savana_bossmenu_shops SET money = money + ? WHERE id = ?', 
            {value, store})
            
        if updateSuccess then
            -- Oyuncudan para çekme
            if frameworkName == "esx" then
                Player.removeMoney(value)
            else
                Player.Functions.RemoveMoney('cash', value)
            end
            
            -- İşlem kaydı oluşturma
            local currentDate = os.date("%Y-%m-%d %H:%M:%S")
            local transactionSuccess = MySQL:executeSync('INSERT INTO savana_bossmenu_transactions (shop_id, type, name, date, amount) VALUES (?, ?, ?, ?, ?)',
                {store, "deposit", getName(identifier), currentDate, value})
                
            if transactionSuccess then
                return true
            end
        end
    end
    
    return false
end)

lib.callback.register('savana-bossmenu:withdraw', function(source, store, data)
    local source = source
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid
    local value = tonumber(data.value) or 0
    
    -- Dükkanın parasını kontrol et
    local result = MySQL:executeSync('SELECT money FROM savana_bossmenu_shops WHERE id = ?', {store})
    local shopMoney = result and result[1] and tonumber(result[1].money) or 0
    
    if shopMoney and tonumber(shopMoney) >= tonumber(value) then
        -- Dükkandan para çek
        local updateSuccess = MySQL:executeSync('UPDATE savana_bossmenu_shops SET money = money - ? WHERE id = ?', 
            {value, store})
            
        if updateSuccess then
            -- Oyuncuya para ver
            if frameworkName == "esx" then
                Player.addMoney(value)
            else
                Player.Functions.AddMoney('cash', value)
            end
            
            -- İşlem kaydı oluştur
            local currentDate = os.date("%Y-%m-%d %H:%M:%S")
            local transactionSuccess = MySQL:executeSync('INSERT INTO savana_bossmenu_transactions (shop_id, type, name, date, amount) VALUES (?, ?, ?, ?, ?)',
                {store, "withdraw", getName(identifier), currentDate, value})
                
            if transactionSuccess then
                return true
            end
        end
    end
    
    return false
end)

lib.callback.register('savana-bossmenu:kick', function(source, store, data)
    local source = source
    local Player = GetPlayerFromIdentifier(data.id)

    -- Using fetchSync instead of execute for synchronous query
    local staffData = exports.oxmysql:fetchSync('SELECT * FROM savana_bossmenu_staffs WHERE id = ? AND shop_id = ?', {data.id, store})
    
    if staffData and #staffData > 0 then
        -- Personeli ve izinlerini veritabanından siliyoruz
        exports.oxmysql:execute('DELETE FROM savana_bossmenu_staffs WHERE id = ? AND shop_id = ?', {data.id, store})
        exports.oxmysql:execute('DELETE FROM savana_bossmenu_permissions WHERE staff_id = ? AND shop_id = ?', {data.id, store})

        if Config.Shops[store].type == "job" then
            if Player then
                if frameworkName == "esx" then
                    Player.setJob("unemployed", 0)
                else
                    Player.Functions.SetJob("unemployed", 1)
                end
            else
                if frameworkName == "esx" then
                    exports.oxmysql:execute("UPDATE users SET job = ?, job_grade = ? WHERE identifier = ?", {"unemployed", 0, data.id})
                else
                    local jobData = {
                        name = "unemployed",
                        label = "Civilian",
                        payment = 10,
                        grade = {
                            name = "Freelancer",
                            level = 0
                        }
                    }
                    exports.oxmysql:execute("UPDATE players SET job = ? WHERE citizenid = ?", {json.encode(jobData), data.id})
                end
            end
        else
            if Player then
                Player.Functions.SetGang("none", 0)
            else
                local gangData = {
                    name = "none",
                    label = "No Gang Affiliation",
                    grade = {
                        name = "none",
                        level = 0
                    }
                }
                exports.oxmysql:execute("UPDATE players SET gang = ? WHERE citizenid = ?", {json.encode(gangData), data.id})
            end
        end

        return true
    else
        debuk('player data not found (6): '..store)
        return false
    end
end)

lib.callback.register('savana-bossmenu:getDuty', function(source)
    local source = source
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid
    
    local staffData = MySQL.query.await('SELECT duty FROM savana_bossmenu_staffs WHERE id = ?', {identifier})
    return staffData and staffData[1] and staffData[1].duty or "off"
end)

local loaded = false

Citizen.CreateThread(function()
    local number = 0

    if frameworkName == "esx" then
        local fetch = exports.oxmysql:executeSync("SELECT identifier, job FROM users", {})
        
        if fetch then
            for _, v in ipairs(fetch) do
                users[v.identifier] = {
                    name = v.job
                }
                number = number + 1
            end
        end

    else
        local fetch = exports.oxmysql:executeSync("SELECT citizenid, job, gang FROM players", {})
        
        if fetch then
            for _, v in ipairs(fetch) do
                local job = json.decode(v.job)
                local gang = json.decode(v.gang)

                users[v.citizenid] = {
                    name = job.name,
                    gang = gang.name
                }
                number = number + 1
            end
        end
    end

    loaded = true
    debuk(number .. " players loaded")
end)

Citizen.CreateThread(function()
    while not loaded do
        Citizen.Wait(1)
    end

    local number = 0
    
    for k, v in pairs(Config.Shops) do
        local shopExists = exports.oxmysql:scalarSync('SELECT COUNT(*) FROM savana_bossmenu_shops WHERE id = ?', {k})
        if shopExists == 0 then
            exports.oxmysql:insert('INSERT INTO savana_bossmenu_shops (id, type) VALUES (?, ?)', {k, v.type})
        end
        number = number + 1
        refreshMembers(k)
    end

    debuk(number .. " shop(s) loaded")
end)

function GetPlayerFromIdentifier(identifier)
    if frameworkName == "esx" then
        return Framework.GetPlayerFromIdentifier(identifier)
    else
        return Framework.Functions.GetPlayerByCitizenId(identifier)
    end
end

function debuk(txt)
    if Config.debug then
        print("[Debug] [savana-bossmenu] "..txt)
    end
end

function getStaffs(job)
    local staffs = exports.oxmysql:executeSync('SELECT id FROM savana_bossmenu_staffs WHERE shop_id = ?', {job})
    local data = {}
    for _, staff in ipairs(staffs) do
        table.insert(data, staff.id)
    end
    return data
end


RegisterNetEvent('savana-bossmenu:register')
AddEventHandler('savana-bossmenu:register', function()
    local source = source
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid

    if not users[identifier] then
        local job = getJob(source)
        local gang = getGang(source)

        users[identifier] = {
            job = job.name,
            gang = gang.name
        }
    end
end)

RegisterNetEvent('savana-bossmenu:resetDuty')
AddEventHandler('savana-bossmenu:resetDuty', function()
    local source = source
    local Player = getPlayer(source)
    local myIdentifier = Player.identifier or Player.PlayerData.citizenid
    
    -- Duty durumunu güncelle
    local success = MySQL:executeSync('UPDATE savana_bossmenu_staffs SET duty = ? WHERE id = ?', 
        {'off', myIdentifier})
        
    if not success then
        duty[myIdentifier] = false
        debuk('Failed to update duty status for: ' .. myIdentifier)
    end
end)


RegisterNetEvent('savana-bossmenu:createStash')
AddEventHandler('savana-bossmenu:createStash', function(name)
    exports.ox_inventory:RegisterStash(name, name, 75, 1000000)
end)

RegisterNetEvent('savana-bossmenu:updateJob')
AddEventHandler('savana-bossmenu:updateJob', function(job)
    local source = source
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid

    if not job or not identifier then
        debuk("Error: Missing job or identifier.")
        return
    end

    -- Kullanıcı bilgilerini güncelle
    users[identifier] = users[identifier] or {}
    users[identifier]["job"] = job

    -- Veritabanı güncelleme
    local query = "UPDATE savana_bossmenu_staffs SET job = ?, shop_id = ? WHERE id = ?"
    local parameters = {job, job, identifier}

    exports.oxmysql:execute(query, parameters, function(result)
        if result then
            debuk("Job updated successfully.")
        else
            debuk("Error: Failed to update job.")
        end
    end)

    -- Veritabanı güncelleme
    local query2 = "UPDATE savana_bossmenu_permissions SET shop_id = ? WHERE staff_id = ?"
    local parameters2 = {job, identifier}

    exports.oxmysql:execute(query2, parameters2, function(result2)
        if result2 then
            debuk("shop id updated successfully.")
        else
            debuk("Error: Failed to update job.")
        end
    end)

    -- Üyeleri yenile
    refreshMembers(job)
end)

RegisterNetEvent('savana-bossmenu:updateGang')
AddEventHandler('savana-bossmenu:updateGang', function(gang)
    local source = source
    local Player = getPlayer(source)
    local identifier = Player.identifier or Player.PlayerData.citizenid

    users[identifier]["gang"] = gang

    MySQL.update('UPDATE savana_bossmenu_staffs SET gang = ? WHERE id = ?', {gang, identifier}, function(affectedRows)
        if affectedRows > 0 then
            debuk("Update successful: " .. affectedRows .. " row(s) affected.")
        else
            debuk("No rows were updated.")
        end
    end)

    refreshMembers(gang)
end)

function refreshMembers(store)
    local staffs = getStaffs(store)
    local players = {}
    
    for _, identifier in ipairs(staffs) do
        local staffData = exports.oxmysql:executeSync('SELECT * FROM savana_bossmenu_staffs WHERE id = ? AND shop_id = ?', {identifier, store})
        if staffData and staffData[1] then
            local job = getJob(nil, identifier)
            local gang = getGang(nil, identifier)
            
            players[identifier] = {
                name = getName(identifier),
                job = Config.Shops[store].type == "job" and job.label or gang.label,
                time = staffData[1].time or 0,
                salary = Config.Shops[store].type == "job" and job.salary or 0,
                duty = staffData[1].duty,
                online = GetPlayerFromIdentifier(identifier) or false
            }
        end
    end
end

-- Personel verilerini çeken ve güncelleyen fonksiyon
local function updateStaffTime()
    exports.oxmysql:execute('SELECT id, shop_id, duty, time FROM savana_bossmenu_staffs WHERE duty = ?', {'on'}, function(result)
        if result and #result > 0 then
            for _, staff in ipairs(result) do
                exports.oxmysql:execute('UPDATE savana_bossmenu_staffs SET time = time + 5 WHERE id = ? AND shop_id = ?', {staff.id, staff.shop_id})
            end
        else
            debuk("Personel verileri bulunamadı veya sorgu hatası oluştu.")
        end
    end)
end

-- Her 5 dakikada bir personel verilerini güncelle
Citizen.CreateThread(function()
    while true do
        updateStaffTime()
        Citizen.Wait(300000) -- 5 dakika
    end
end)

RegisterNetEvent('savana-bossmenu:openInventory')
AddEventHandler('savana-bossmenu:openInventory', function(inv, name)
    local data = { label = 'Storage', maxweight = 400000, slots = 500 }
    exports['qb-inventory']:OpenInventory(source, name, data)
end)

function addMoney(store, money)
    return MySQL.update.await('UPDATE savana_bossmenu_shops SET money = money + ? WHERE id = ?', {money, store})
end

function removeMoney(store, money)
    return MySQL.update.await('UPDATE savana_bossmenu_shops SET money = money - ? WHERE id = ?', {money, store})
end

RegisterNetEvent('savana-bossmenu:addMoney')
AddEventHandler('savana-bossmenu:addMoney', function(store, money)
    addMoney(store, money)
end)

RegisterNetEvent('savana-bossmenu:removeMoney')
AddEventHandler('savana-bossmenu:removeMoney', function(store, money)
    removeMoney(store, money)
end)


lib.callback.register('savana-bossmenu:getjob', function(source)
    local source = source
    local Player = getJob(source)

    return Player.name -- ESX için: Player.job, QBCore için: Player.PlayerData.job
end)