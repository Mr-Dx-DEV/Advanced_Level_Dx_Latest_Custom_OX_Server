Lib.registerCallback('nn_food:getRestaurantData', function(source, cb, restaurantId)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb(false)
    end

    local restaurant = MySQL.query.await('SELECT * FROM sn_restaurants WHERE id = ?', {restaurantId})
    if not restaurant[1] then return cb(false) end

    local restaurantData = restaurant[1]
    restaurantData.info = type(restaurantData.info) == 'string' and json.decode(restaurantData.info or '{}') or restaurantData.info
    restaurantData.positions = type(restaurantData.positions) == 'string' and json.decode(restaurantData.positions or '{}') or restaurantData.positions

    cb(restaurantData)
end)

Lib.registerCallback('nn_food:getCookingItems', function(source, cb)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return cb(false)
    end

    cb(Config.CookingItems)
end)

Lib.registerCallback('nn_food:checkPlayerInventory', function(source, cb, ingredients)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return cb(false)
    end

    local hasIngredients = {}
    
    for _, ingredient in pairs(ingredients) do
        local hasItem = bridge.inventory.hasItem(source, ingredient, 1)
        hasIngredients[ingredient] = hasItem
    end
    
    cb(hasIngredients)
end)


--Lib.registerCallback('nn_food:checkPlayerInventory', function(source, cb, ingredients)
--    local playerRestaurant = GetPlayerRestaurant(source)
--    if not playerRestaurant then
--        return cb(false)
--    end
--
--    local inventory = bridge.inventory.getInventory(source)
--    local hasIngredients = {}
--    
--    for _, ingredient in pairs(ingredients) do
--        local hasItem = bridge.inventory.hasItem(source, ingredient, 1)
--        hasIngredients[ingredient] = hasItem
--    end
--    
--    cb(hasIngredients)
--end)

RegisterNetEvent('nn_food:startCookingRecipe', function(recipeId)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        bridge.notification.show(source, {
            message = T('access_denied_not_employee'),
            type = 'error'
        })
        return
    end
    
    local recipe = MySQL.query.await('SELECT * FROM sn_rest_recipes WHERE id = ?', {recipeId})
    if not recipe[1] then
        bridge.notification.show(source, {
            message = T('recipe_not_found'),
            type = 'error'
        })
        return
    end
    
    recipe = recipe[1]
    local ingredients = type(recipe.ingredients) == 'string' and json.decode(recipe.ingredients or '[]') or recipe.ingredients
    
    for _, ingredient in pairs(ingredients) do
        if not bridge.inventory.hasItem(source, ingredient, 1) then
            bridge.notification.show(source, {
                message = T('missing_ingredients'),
                type = 'error'
            })
            return
        end
    end
    
    for _, ingredient in pairs(ingredients) do
        bridge.inventory.removeItem(source, ingredient, 1)
    end
    
    if recipe.output_item then
        bridge.inventory.addItem(source, recipe.output_item, 1)
        bridge.notification.show(source, {
            message = T('successfully_cooked', recipe.name),
            type = 'success'
        })
    end
end)

RegisterNetEvent('nn_food:openRecipeBook', function(restaurantId)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        bridge.notification.show(source, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end
    
    local recipes = MySQL.query.await('SELECT * FROM sn_rest_recipes WHERE restaurant_id = ? AND (is_drink = 0 OR is_drink IS NULL) ORDER BY id ASC', {restaurantId})
    if not recipes then
        recipes = {}
    end
    
    for i = 1, #recipes do
        recipes[i].ingredients = type(recipes[i].ingredients) == 'string' and json.decode(recipes[i].ingredients or '[]') or recipes[i].ingredients
        
        if recipes[i].instructions and type(recipes[i].instructions) == "string" then
            local instr_str = recipes[i].instructions
            recipes[i].instructions = {}
            for instruction in string.gmatch(instr_str, "[^|]+") do
                if instruction ~= "" then
                    table.insert(recipes[i].instructions, instruction)
                end
            end
        else
            recipes[i].instructions = {}
        end
        
        if recipes[i].tips and type(recipes[i].tips) == "string" then
            local tip_str = recipes[i].tips
            recipes[i].tips = {}
            for tip in string.gmatch(tip_str, "[^|]+") do
                if tip ~= "" then
                    table.insert(recipes[i].tips, tip)
                end
            end
        else
            recipes[i].tips = {}
        end
        
        if recipes[i].notes and type(recipes[i].notes) == "string" then
            local note_str = recipes[i].notes
            recipes[i].notes = {}
            for note in string.gmatch(note_str, "[^|]+") do
                if note ~= "" then
                    table.insert(recipes[i].notes, note)
                end
            end
        else
            recipes[i].notes = {}
        end
        
        recipes[i].category = "Main Course"
        recipes[i].servings = 4
        recipes[i].cookingTime = recipes[i].cook_time .. " mins"
    end
    
    TriggerClientEvent('nn_food:openRecipeBook', source, restaurantId)
    TriggerClientEvent('nn_food:setRecipeBookData', source, recipes)
end)

RegisterNetEvent('nn_food:updateRestaurantInfo', function(restaurantId, data)
    local src = source
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end
    
    local info = {
        blipNumber = data.blipNumber,
        logoUrl = data.logoUrl,
        color = data.themeColor,
        secondaryColor = data.secondaryColor
    }

    MySQL.update.await('UPDATE sn_restaurants SET label = ?, description = ?, is_open = ?, theme_color = ?, secondary_color = ?, logo_url = ?, info = ? WHERE id = ?', {
        data.name,
        data.description,
        data.isOpen and 1 or 0,
        data.themeColor,
        data.secondaryColor,
        data.logoUrl,
        json.encode(info),
        restaurantId
    })

    bridge.notification.show(src, {
        message = T('restaurant_info_updated'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshRestaurantData', src)
end)

Lib.registerCallback('nn_food:getEmployees', function(source, cb, restaurantId)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb({})
    end

    local employees = MySQL.query.await('SELECT * FROM sn_rest_employees WHERE restaurant_id = ? AND is_active = 1', {restaurantId})
    
    for i, employee in ipairs(employees) do
        employee.isBoss = employee.is_boss
        employee.isManager = employee.is_manager
        employee.hireDate = employee.hire_date
    end
    
    cb(employees)
end)

RegisterNetEvent('nn_food:addEmployee', function(restaurantId, employeeData)
    local src = source
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end

    MySQL.insert.await('INSERT INTO sn_rest_employees (restaurant_id, identifier, name, position, salary, performance, hire_date) VALUES (?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        employeeData.identifier,
        employeeData.name,
        employeeData.position,
        employeeData.salary,
        employeeData.performance or 50,
        employeeData.hireDate
    })

    bridge.notification.show(src, {
        message = T('employee_added_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshEmployees', src)
    
    local targetPlayerId = GetPlayerIdFromIdentifier(employeeData.identifier)
    if targetPlayerId then
        TriggerClientEvent('nn_food:refreshPlayerRestaurantCache', targetPlayerId)
    end
end)

RegisterNetEvent('nn_food:updateEmployee', function(employeeId, employeeData)
    local src = source
    local employee = MySQL.query.await('SELECT restaurant_id FROM sn_rest_employees WHERE id = ?', {employeeId})
    if not employee[1] then
        bridge.notification.show(src, {
            message = T('employee_not_found'),
            type = 'error'
        })
        return
    end

    local employeeRestaurantId = employee[1].restaurant_id

    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= employeeRestaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end

    MySQL.update.await('UPDATE sn_rest_employees SET name = ?, position = ?, salary = ?, performance = ?, is_boss = ?, is_manager = ? WHERE id = ?', {
        employeeData.name,
        employeeData.position,
        employeeData.salary,
        employeeData.performance,
        employeeData.isBoss and 1 or 0,
        employeeData.isManager and 1 or 0,
        employeeId
    })

    bridge.notification.show(src, {
        message = T('employee_updated_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshEmployees', src)
end)

RegisterNetEvent('nn_food:deleteEmployee', function(employeeId)
    local src = source
    local employee = MySQL.query.await('SELECT restaurant_id, identifier FROM sn_rest_employees WHERE id = ?', {employeeId})

    if not employee[1] then
        bridge.notification.show(src, {
            message = T('employee_not_found'),
            type = 'error'
        })
        return
    end

    local employeeData = employee[1] 
    local employeeRestaurantId = employeeData.restaurant_id

    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= employeeRestaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end

    MySQL.update.await('UPDATE sn_rest_employees SET is_active = 0 WHERE id = ?', {employeeId})

    bridge.notification.show(src, {
        message = T('employee_removed_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshEmployees', src)

    local targetPlayerId = GetPlayerIdFromIdentifier(employeeData.identifier)
    if targetPlayerId then
        TriggerClientEvent('nn_food:refreshPlayerRestaurantCache', targetPlayerId)
    end
end)


--RegisterNetEvent('nn_food:deleteEmployee', function(employeeId)
--    local src = source
--    local employee = MySQL.query.await('SELECT restaurant_id FROM sn_rest_employees WHERE id = ?', {employeeId})
--    if not employee[1] then
--        bridge.notification.show(src, {
--            message = T('employee_not_found'),
--            type = 'error'
--        })
--        return
--    end
--
--    local employeeRestaurantId = employee[1].restaurant_id
--
--    local playerRestaurant = GetPlayerRestaurant(src)
--    if not playerRestaurant or playerRestaurant.restaurantId ~= employeeRestaurantId then
--        bridge.notification.show(src, {
--            message = T('access_denied_not_employee_restaurant'),
--            type = 'error'
--        })
--        return
--    end
--
--    MySQL.update.await('UPDATE sn_rest_employees SET is_active = 0 WHERE id = ?', {employeeId})
--
--    bridge.notification.show(src, {
--        message = T('employee_removed_successfully'),
--        type = 'success'
--    })
--    TriggerClientEvent('nn_food:refreshEmployees', src)
--    local targetPlayerId = GetPlayerIdFromIdentifier(employeeData.identifier)
--    if targetPlayerId then
--        TriggerClientEvent('nn_food:refreshPlayerRestaurantCache', targetPlayerId)
--    end
--end)

Lib.registerCallback('nn_food:getRecipes', function(source, cb, restaurantId)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb({})
    end

    local recipes = MySQL.query.await([[
        SELECT r.*, 
               COALESCE(GROUP_CONCAT(DISTINCT ri.instruction_text ORDER BY ri.step_number SEPARATOR '|||'), '') as instructions,
               COALESCE(GROUP_CONCAT(DISTINCT rt.tip_text ORDER BY rt.tip_order SEPARATOR '|||'), '') as tips,
               COALESCE(GROUP_CONCAT(DISTINCT rn.note_text SEPARATOR '|||'), '') as notes
        FROM sn_rest_recipes r
        LEFT JOIN sn_rest_recipe_instructions ri ON r.id = ri.recipe_id
        LEFT JOIN sn_rest_recipe_tips rt ON r.id = rt.recipe_id
        LEFT JOIN sn_rest_recipe_notes rn ON r.id = rn.recipe_id
        WHERE r.restaurant_id = ? AND r.is_active = 1
        GROUP BY r.id
        ORDER BY r.name ASC
    ]], {restaurantId})
    
    for i = 1, #recipes do
        recipes[i].ingredients = type(recipes[i].ingredients) == 'string' and json.decode(recipes[i].ingredients or '[]') or recipes[i].ingredients
        if recipes[i].instructions and type(recipes[i].instructions) == "string" then
            local instr_str = recipes[i].instructions
            recipes[i].instructions = {}
            for instruction in string.gmatch(instr_str, "[^|]+") do
                if instruction ~= "" then
                    table.insert(recipes[i].instructions, instruction)
                end
            end
        else
            recipes[i].instructions = {}
        end
        
        
        if recipes[i].tips and type(recipes[i].tips) == "string" then
            local tip_str = recipes[i].tips
            recipes[i].tips = {}
            for tip in string.gmatch(tip_str, "[^|]+") do
                if tip ~= "" then
                    table.insert(recipes[i].tips, tip)
                end
            end
        else
            recipes[i].tips = {}
        end
        
        if recipes[i].notes and type(recipes[i].notes) == "string" then
            local note_str = recipes[i].notes
            recipes[i].notes = {}
            for note in string.gmatch(note_str, "[^|]+") do
                if note ~= "" then
                    table.insert(recipes[i].notes, note)
                end
            end
        else
            recipes[i].notes = {}
        end
    end
    
    cb(recipes)
end)
Lib.registerCallback('nn_food:getRecipeBookData', function(source, cb, restaurantId)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb({})
    end

    local recipes = MySQL.query.await([[
        SELECT r.*, 
               COALESCE(GROUP_CONCAT(DISTINCT ri.instruction_text ORDER BY ri.step_number SEPARATOR '|||'), '') as instructions,
               COALESCE(GROUP_CONCAT(DISTINCT rt.tip_text ORDER BY rt.tip_order SEPARATOR '|||'), '') as tips,
               COALESCE(GROUP_CONCAT(DISTINCT rn.note_text SEPARATOR '|||'), '') as notes
        FROM sn_rest_recipes r
        LEFT JOIN sn_rest_recipe_instructions ri ON r.id = ri.recipe_id
        LEFT JOIN sn_rest_recipe_tips rt ON r.id = rt.recipe_id
        LEFT JOIN sn_rest_recipe_notes rn ON r.id = rn.recipe_id
        WHERE r.restaurant_id = ? AND r.is_active = 1 AND (r.is_drink = 0 OR r.is_drink IS NULL)
        GROUP BY r.id
        ORDER BY r.name ASC
    ]], {restaurantId})
    
    for i = 1, #recipes do
        recipes[i].ingredients = type(recipes[i].ingredients) == 'string' and json.decode(recipes[i].ingredients or '[]') or recipes[i].ingredients
        if recipes[i].instructions and type(recipes[i].instructions) == "string" then
            local instr_str = recipes[i].instructions
            recipes[i].instructions = {}
            for instruction in string.gmatch(instr_str, "[^|]+") do
                if instruction ~= "" then
                    table.insert(recipes[i].instructions, instruction)
                end
            end
        else
            recipes[i].instructions = {}
        end
        
        if recipes[i].tips and type(recipes[i].tips) == "string" then
            local tip_str = recipes[i].tips
            recipes[i].tips = {}
            for tip in string.gmatch(tip_str, "[^|]+") do
                if tip ~= "" then
                    table.insert(recipes[i].tips, tip)
                end
            end
        else
            recipes[i].tips = {}
        end
        
        
        if recipes[i].notes and type(recipes[i].notes) == "string" then
            local note_str = recipes[i].notes
            recipes[i].notes = {}
            for note in string.gmatch(note_str, "[^|]+") do
                if note ~= "" then
                    table.insert(recipes[i].notes, note)
                end
            end
        else
            recipes[i].notes = {}
        end
        
        recipes[i].category = "Main Course"
        recipes[i].servings = 4
        recipes[i].cookingTime = recipes[i].cook_time .. " mins"
    end
    
    cb(recipes)
end)

RegisterNetEvent('nn_food:addRecipe', function(restaurantId, recipeData)
    local src = source
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end

    local recipeId = MySQL.insert.await('INSERT INTO sn_rest_recipes (restaurant_id, name, description, ingredients, output_item, cook_time, difficulty, image_url, is_drink) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        recipeData.name,
        recipeData.description,
        json.encode(recipeData.ingredients),
        recipeData.output,
        recipeData.cookTime,
        recipeData.difficulty,
        recipeData.image,
        recipeData.isDrink and 1 or 0
    })

    
    if recipeData.instructions and #recipeData.instructions > 0 then
        for i, instruction in ipairs(recipeData.instructions) do
            if instruction and instruction ~= "" then
                MySQL.insert.await('INSERT INTO sn_rest_recipe_instructions (recipe_id, step_number, instruction_text) VALUES (?, ?, ?)', {
                    recipeId,
                    i,
                    instruction
                })
            end
        end
    end

    
    if recipeData.tips and #recipeData.tips > 0 then
        for i, tip in ipairs(recipeData.tips) do
            if tip and tip ~= "" then
                MySQL.insert.await('INSERT INTO sn_rest_recipe_tips (recipe_id, tip_text, tip_order) VALUES (?, ?, ?)', {
                    recipeId,
                    tip,
                    i
                })
            end
        end
    end

    
    if recipeData.notes and #recipeData.notes > 0 then
        for i, note in ipairs(recipeData.notes) do
            if note and note ~= "" then
                MySQL.insert.await('INSERT INTO sn_rest_recipe_notes (recipe_id, note_text) VALUES (?, ?)', {
                    recipeId,
                    note
                })
            end
        end
    end

    bridge.notification.show(src, {
        message = T('recipe_added_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshRecipes', src)
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

RegisterNetEvent('nn_food:updateRecipe', function(recipeId, recipeData)
    local src = source

    MySQL.update.await('UPDATE sn_rest_recipes SET name = ?, description = ?, ingredients = ?, output_item = ?, cook_time = ?, difficulty = ?, image_url = ?, is_drink = ? WHERE id = ?', {
        recipeData.name,
        recipeData.description,
        json.encode(recipeData.ingredients),
        recipeData.output,
        recipeData.cookTime,
        recipeData.difficulty,
        recipeData.image,
        recipeData.isDrink and 1 or 0,
        recipeId
    })

    MySQL.update.await('UPDATE sn_rest_menu_items SET name = ?, description = ?, image_url = ? WHERE recipe_id = ? AND is_available = 1', {
        recipeData.name,
        recipeData.description,
        recipeData.image,
        recipeId
    })

    
    MySQL.update.await('DELETE FROM sn_rest_recipe_instructions WHERE recipe_id = ?', {recipeId})
    MySQL.update.await('DELETE FROM sn_rest_recipe_tips WHERE recipe_id = ?', {recipeId})
    MySQL.update.await('DELETE FROM sn_rest_recipe_notes WHERE recipe_id = ?', {recipeId})

    
    if recipeData.instructions and #recipeData.instructions > 0 then
        for i, instruction in ipairs(recipeData.instructions) do
            if instruction and instruction ~= "" then
                MySQL.insert.await('INSERT INTO sn_rest_recipe_instructions (recipe_id, step_number, instruction_text) VALUES (?, ?, ?)', {
                    recipeId,
                    i,
                    instruction
                })
            end
        end
    end

    
    if recipeData.tips and #recipeData.tips > 0 then
        for i, tip in ipairs(recipeData.tips) do
            if tip and tip ~= "" then
                MySQL.insert.await('INSERT INTO sn_rest_recipe_tips (recipe_id, tip_text, tip_order) VALUES (?, ?, ?)', {
                    recipeId,
                    tip,
                    i
                })
            end
        end
    end

    
    if recipeData.notes and #recipeData.notes > 0 then
        for i, note in ipairs(recipeData.notes) do
            if note and note ~= "" then
                MySQL.insert.await('INSERT INTO sn_rest_recipe_notes (recipe_id, note_text) VALUES (?, ?)', {
                    recipeId,
                    note
                })
            end
        end
    end

    bridge.notification.show(src, {
        message = T('recipe_updated_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshRecipes', src)
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

RegisterNetEvent('nn_food:deleteRecipe', function(recipeId)
    local src = source

    MySQL.update.await('UPDATE sn_rest_recipes SET is_active = 0 WHERE id = ?', {recipeId})
    
    MySQL.update.await('UPDATE sn_rest_menu_items SET is_available = 0 WHERE recipe_id = ?', {recipeId})

    bridge.notification.show(src, {
        message = T('recipe_deleted_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshRecipes', src)
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

Lib.registerCallback('nn_food:getMenuData', function(source, cb, restaurantId)
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb({})
    end

    local categories = MySQL.query.await('SELECT * FROM sn_rest_menu_categories WHERE restaurant_id = ? AND is_active = 1 ORDER BY display_order ASC', {restaurantId})
    
    for i = 1, #categories do
        local items = MySQL.query.await('SELECT * FROM sn_rest_menu_items WHERE category_id = ? AND is_available = 1 ORDER BY display_order ASC', {categories[i].id})
        categories[i].items = items
    end
    
    cb(categories)
end)

RegisterNetEvent('nn_food:addCategory', function(restaurantId, categoryData)
    local src = source

    local categoryId = MySQL.insert.await('INSERT INTO sn_rest_menu_categories (restaurant_id, name, description, display_order) VALUES (?, ?, ?, ?)', {
        restaurantId,
        categoryData.name,
        categoryData.description,
        categoryData.displayOrder or 0
    })

    if categoryData.items and #categoryData.items > 0 then
        for i, item in ipairs(categoryData.items) do
            MySQL.insert.await('INSERT INTO sn_rest_menu_items (restaurant_id, category_id, name, description, price, image_url, recipe_id, display_order) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
                restaurantId,
                categoryId,
                item.name,
                item.description or '',
                item.price or 0.00,
                item.image_url or item.image or '',
                item.id,
                i - 1
            })
        end
    end

    bridge.notification.show(src, {
        message = T('category_added_successfully', #(categoryData.items or {})),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

RegisterNetEvent('nn_food:updateCategory', function(categoryId, categoryData)
    local src = source

    MySQL.update.await('UPDATE sn_rest_menu_categories SET name = ?, description = ? WHERE id = ?', {
        categoryData.name,
        categoryData.description,
        categoryId
    })

    if categoryData.items then
        local existingItems = MySQL.query.await('SELECT id, recipe_id, price FROM sn_rest_menu_items WHERE category_id = ? AND is_available = 1', {categoryId})
        local existingItemsMap = {}
        for _, item in ipairs(existingItems) do
            existingItemsMap[item.recipe_id] = item
        end

        local currentRecipeIds = {}
        
        for i, item in ipairs(categoryData.items) do
            local recipeId = item.recipe_id or item.id
            currentRecipeIds[recipeId] = true
            
            if item.menu_item_id and existingItemsMap[recipeId] then
                MySQL.update.await('UPDATE sn_rest_menu_items SET price = ?, display_order = ? WHERE id = ?', {
                    item.price or 0.00,
                    i - 1,
                    item.menu_item_id
                })
            elseif not existingItemsMap[recipeId] then
                MySQL.insert.await('INSERT INTO sn_rest_menu_items (restaurant_id, category_id, name, description, price, image_url, recipe_id, display_order) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
                    categoryData.restaurant_id,
                    categoryId,
                    item.name,
                    item.description or '',
                    item.price or 0.00,
                    item.image_url or item.image or '',
                    recipeId,
                    i - 1
                })
            end
        end
        
        for recipeId, existingItem in pairs(existingItemsMap) do
            if not currentRecipeIds[recipeId] then
                MySQL.update.await('UPDATE sn_rest_menu_items SET is_available = 0 WHERE id = ?', {existingItem.id})
            end
        end
    end

    bridge.notification.show(src, {
        message = T('category_updated_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

RegisterNetEvent('nn_food:deleteCategory', function(categoryId)
    local src = source

    MySQL.update.await('UPDATE sn_rest_menu_categories SET is_active = 0 WHERE id = ?', {categoryId})
    MySQL.update.await('UPDATE sn_rest_menu_items SET is_available = 0 WHERE category_id = ?', {categoryId})

    bridge.notification.show(src, {
        message = T('category_deleted_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

RegisterNetEvent('nn_food:addMenuItem', function(categoryId, restaurantId, itemData)
    local src = source

    MySQL.insert.await('INSERT INTO sn_rest_menu_items (restaurant_id, category_id, name, description, price, image_url, recipe_id, display_order) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        categoryId,
        itemData.name,
        itemData.description,
        itemData.price,
        itemData.image,
        itemData.recipeId,
        itemData.displayOrder or 0
    })

    bridge.notification.show(src, {
        message = T('menu_item_added_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

RegisterNetEvent('nn_food:updateMenuItem', function(itemId, itemData)
    local src = source

    MySQL.update.await('UPDATE sn_rest_menu_items SET name = ?, description = ?, price = ? WHERE id = ?', {
        itemData.name,
        itemData.description,
        itemData.price,
        itemId
    })

    bridge.notification.show(src, {
        message = T('menu_item_updated_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

RegisterNetEvent('nn_food:deleteMenuItem', function(itemId)
    local src = source

    MySQL.update.await('UPDATE sn_rest_menu_items SET is_available = 0 WHERE id = ?', {itemId})

    bridge.notification.show(src, {
        message = T('menu_item_removed_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshMenu', src)
end)

Lib.registerCallback('nn_food:getPOSSystems', function(source, cb, restaurantId)
    -- Check if player is an employee of this restaurant
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb({})
    end

    local posSystems = MySQL.query.await('SELECT * FROM sn_rest_pos_systems WHERE restaurant_id = ?', {restaurantId})
    cb(posSystems)
end)

RegisterNetEvent('nn_food:addPOS', function(restaurantId, posData)
    local src = source

    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end

    MySQL.insert.await('INSERT INTO sn_rest_pos_systems (restaurant_id, name, device_type, position_x, position_y, position_z, heading, is_active) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        posData.name,
        posData.device_type or posData.type,
        posData.position and posData.position.x or nil,
        posData.position and posData.position.y or nil,
        posData.position and posData.position.z or nil,
        posData.position and posData.position.heading or nil,
        (posData.is_active or posData.isActive) and 1 or 0
    })

    bridge.notification.show(src, {
        message = T('pos_system_added_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshPOS', src)
    TriggerClientEvent('nn_food:refreshKiosks', -1)
    TriggerClientEvent('nn_food:refreshPOSInteractions', -1)
end)

RegisterNetEvent('nn_food:updatePOS', function(posId, posData)
    local src = source

    MySQL.update.await('UPDATE sn_rest_pos_systems SET name = ?, device_type = ?, is_active = ? WHERE id = ?', {
        posData.name,
        posData.device_type or posData.type,
        (posData.is_active or posData.isActive) and 1 or 0,
        posId
    })

    bridge.notification.show(src, {
        message = T('pos_system_updated_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshPOS', src)
    TriggerClientEvent('nn_food:refreshKiosks', -1)
    TriggerClientEvent('nn_food:refreshPOSInteractions', -1)
end)

RegisterNetEvent('nn_food:deletePOS', function(posId)
    local src = source
    local posData = MySQL.query.await('SELECT * FROM sn_rest_pos_systems WHERE id = ?', {posId})

    MySQL.rawExecute.await('DELETE FROM sn_rest_pos_systems WHERE id = ?', {posId})
    if posData and posData[1] then
        if posData[1].position_x and posData[1].position_y and posData[1].position_z then
            local coords = vector3(posData[1].position_x, posData[1].position_y, posData[1].position_z)
            if coords then
                TriggerClientEvent('nn_food:removeCoordsInt', -1, coords)
            end
        end
    end

    bridge.notification.show(src, {
        message = T('pos_system_deleted_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshPOS', src)
    TriggerClientEvent('nn_food:refreshKiosks', -1)
    TriggerClientEvent('nn_food:refreshPOSInteractions', -1)
end)

RegisterNetEvent('nn_food:addTVDisplay', function(restaurantId, tvData)
    local src = source
    
    if not restaurantId then
        bridge.notification.show(src, {
            message = T('error_restaurant_id_missing'),
            type = 'error'
        })
        return
    end

    local existingDisplay = MySQL.query.await('SELECT id, name FROM sn_rest_tv_displays WHERE restaurant_id = ? AND display_type = ?', {
        restaurantId,
        tvData.type
    })
    
    if existingDisplay and #existingDisplay > 0 then
        local displayTypeName = tvData.type:gsub("_", " "):gsub("(%a)([%w_']*)", function(first, rest) 
            return first:upper()..rest:lower() 
        end)
        bridge.notification.show(src, {
            message = T('display_already_exists', displayTypeName, existingDisplay[1].name),
            type = 'error'
        })
        return
    end

    local customContent = nil
    if tvData.customContent then
        customContent = json.encode(tvData.customContent)
    end
    
    local insertId = MySQL.insert.await('INSERT INTO sn_rest_tv_displays (restaurant_id, name, display_type, model, custom_content, position_x, position_y, position_z, heading, is_active) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        tvData.name,
        tvData.type,
        tvData.model,
        customContent,
        tvData.position.x,
        tvData.position.y,
        tvData.position.z,
        tvData.position.heading,
        tvData.isActive and 1 or 0
    })

    bridge.notification.show(src, {
        message = T('tv_display_added_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshTVs', -1)
    
    local spawnData = {
        id = insertId,
        restaurant_id = restaurantId,
        name = tvData.name,
        type = tvData.type,
        display_type = tvData.type,
        model = tvData.model or "prop_tv_flat_03b",
        position = {
            x = tvData.position.x,
            y = tvData.position.y,
            z = tvData.position.z,
            heading = tvData.position.heading
        },
        position_x = tvData.position.x,
        position_y = tvData.position.y,
        position_z = tvData.position.z,
        heading = tvData.position.heading,
        is_active = tvData.isActive and 1 or 0,
        restaurantId = restaurantId,
        custom_content = tvData.customContent
    }
    
    TriggerClientEvent('nn_food:tvDisplayCreated', -1, spawnData)
end)

RegisterNetEvent('nn_food:updateTVDisplay', function(tvId, tvData)
    local src = source

    local currentDisplay = MySQL.query.await('SELECT restaurant_id, display_type FROM sn_rest_tv_displays WHERE id = ?', {tvId})
    if not currentDisplay or #currentDisplay == 0 then
        bridge.notification.show(src, {
            message = T('display_not_found'),
            type = 'error'
        })
        return
    end
    
    local restaurantId = currentDisplay[1].restaurant_id
    local currentType = currentDisplay[1].display_type
    
    local newType = tvData.type or tvData.display_type
    
    if newType ~= currentType then
        local existingDisplay = MySQL.query.await('SELECT id, name FROM sn_rest_tv_displays WHERE restaurant_id = ? AND display_type = ? AND id != ?', {
            restaurantId,
            newType,
            tvId
        })
        
        if existingDisplay and #existingDisplay > 0 then
            local displayTypeName = newType:gsub("_", " "):gsub("(%a)([%w_']*)", function(first, rest) 
                return first:upper()..rest:lower() 
            end)
            bridge.notification.show(src, {
                message = T('display_already_exists', displayTypeName, existingDisplay[1].name),
                type = 'error'
            })
            return
        end
    end

    local customContent = nil
    if tvData.customContent then
        customContent = json.encode(tvData.customContent)
    end
    
    local displayType = tvData.type or tvData.display_type
    local isActive = 1
    if tvData.isActive ~= nil then
        isActive = tvData.isActive and 1 or 0
    end
    
    MySQL.update.await('UPDATE sn_rest_tv_displays SET name = ?, display_type = ?, custom_content = ?, is_active = ? WHERE id = ?', {
        tvData.name,
        displayType,
        customContent,
        isActive,
        tvId
    })

    bridge.notification.show(src, {
        message = T('tv_display_updated_successfully'),
        type = 'success'
    })
    TriggerClientEvent('nn_food:refreshTVs', -1)
end)

RegisterNetEvent('nn_food:deleteTVDisplay', function(tvId)
    local src = source

    local tvData = MySQL.query.await('SELECT * FROM sn_rest_tv_displays WHERE id = ?', {tvId})
    
    if tvData and tvData[1] then
        MySQL.rawExecute.await('DELETE FROM sn_rest_tv_displays WHERE id = ?', {tvId})

        TriggerClientEvent('nn_food:deleteTVEntity', -1, tvId)
        
        bridge.notification.show(src, {
            message = T('tv_display_deleted_successfully'),
            type = 'success'
        })
        TriggerClientEvent('nn_food:refreshTVs', -1) -- Refresh for all players
    else
        bridge.notification.show(src, {
            message = T('tv_display_not_found'),
            type = 'error'
        })
    end
end)

Lib.registerCallback('nn_food:getAnalytics', function(source, cb, restaurantId)
    local today = os.date('%Y-%m-%d')
    local yesterday = os.date('%Y-%m-%d', os.time() - (24 * 60 * 60))
    local weekAgo = os.date('%Y-%m-%d', os.time() - (7 * 24 * 60 * 60))
    local monthAgo = os.date('%Y-%m-%d', os.time() - (30 * 24 * 60 * 60))
    local lastMonthStart = os.date('%Y-%m-01', os.time() - (30 * 24 * 60 * 60))
    local lastMonthEnd = os.date('%Y-%m-%d', os.time() - (1 * 24 * 60 * 60))
    local currentMonthStart = os.date('%Y-%m-01')
    
    
    local todayAnalytics = MySQL.query.await('SELECT * FROM sn_rest_analytics WHERE restaurant_id = ? AND date = ?', {restaurantId, today})
    local todayData = todayAnalytics[1] or {total_orders = 0, total_revenue = 0}
    
    
    if not todayAnalytics[1] then
        local todayOrders = MySQL.query.await('SELECT COUNT(*) as total_orders, SUM(total_amount) as total_revenue FROM sn_rest_orders WHERE restaurant_id = ? AND DATE(created_at) = ?', {restaurantId, today})
        if todayOrders[1] then
            todayData.total_orders = tonumber(todayOrders[1].total_orders) or 0
            todayData.total_revenue = tonumber(todayOrders[1].total_revenue) or 0
        end
    else
        todayData.total_revenue = tonumber(todayData.total_revenue) or 0
        todayData.total_orders = tonumber(todayData.total_orders) or 0
    end
    
    
    local yesterdayAnalytics = MySQL.query.await('SELECT * FROM sn_rest_analytics WHERE restaurant_id = ? AND date = ?', {restaurantId, yesterday})
    local yesterdayData = yesterdayAnalytics[1] or {total_orders = 0, total_revenue = 0}
    
    
    if not yesterdayAnalytics[1] then
        local yesterdayOrders = MySQL.query.await('SELECT COUNT(*) as total_orders, SUM(total_amount) as total_revenue FROM sn_rest_orders WHERE restaurant_id = ? AND DATE(created_at) = ?', {restaurantId, yesterday})
        if yesterdayOrders[1] then
            yesterdayData.total_orders = tonumber(yesterdayOrders[1].total_orders) or 0
            yesterdayData.total_revenue = tonumber(yesterdayOrders[1].total_revenue) or 0
        end
    else
        yesterdayData.total_revenue = tonumber(yesterdayData.total_revenue) or 0
        yesterdayData.total_orders = tonumber(yesterdayData.total_orders) or 0
    end
    
    
    local currentMonthAnalytics = MySQL.query.await('SELECT SUM(total_orders) as total_orders, SUM(total_revenue) as total_revenue FROM sn_rest_analytics WHERE restaurant_id = ? AND date >= ?', {restaurantId, currentMonthStart})
    local currentMonthData = currentMonthAnalytics[1] or {total_orders = 0, total_revenue = 0}
    
    
    if not currentMonthAnalytics[1] or (tonumber(currentMonthData.total_revenue) or 0) == 0 then
        local monthOrders = MySQL.query.await('SELECT COUNT(*) as total_orders, SUM(total_amount) as total_revenue FROM sn_rest_orders WHERE restaurant_id = ? AND DATE(created_at) >= ?', {restaurantId, currentMonthStart})
        if monthOrders[1] then
            currentMonthData.total_orders = tonumber(monthOrders[1].total_orders) or 0
            currentMonthData.total_revenue = tonumber(monthOrders[1].total_revenue) or 0
        end
    else
        currentMonthData.total_revenue = tonumber(currentMonthData.total_revenue) or 0
        currentMonthData.total_orders = tonumber(currentMonthData.total_orders) or 0
    end
    
    
    local lastMonthAnalytics = MySQL.query.await('SELECT SUM(total_orders) as total_orders, SUM(total_revenue) as total_revenue FROM sn_rest_analytics WHERE restaurant_id = ? AND date >= ? AND date <= ?', {restaurantId, lastMonthStart, lastMonthEnd})
    local lastMonthData = lastMonthAnalytics[1] or {total_orders = 0, total_revenue = 0}
    
    
    if not lastMonthAnalytics[1] or (tonumber(lastMonthData.total_revenue) or 0) == 0 then
        local lastMonthOrders = MySQL.query.await('SELECT COUNT(*) as total_orders, SUM(total_amount) as total_revenue FROM sn_rest_orders WHERE restaurant_id = ? AND DATE(created_at) >= ? AND DATE(created_at) <= ?', {restaurantId, lastMonthStart, lastMonthEnd})
        if lastMonthOrders[1] then
            lastMonthData.total_orders = tonumber(lastMonthOrders[1].total_orders) or 0
            lastMonthData.total_revenue = tonumber(lastMonthOrders[1].total_revenue) or 0
        end
    else
        lastMonthData.total_revenue = tonumber(lastMonthData.total_revenue) or 0
        lastMonthData.total_orders = tonumber(lastMonthData.total_orders) or 0
    end
    
    
    local weeklyAnalytics = MySQL.query.await('SELECT * FROM sn_rest_analytics WHERE restaurant_id = ? AND date >= ? ORDER BY date ASC', {restaurantId, weekAgo})
    
    
    local popularItems = MySQL.query.await([[
        SELECT 
            mi.name, 
            COUNT(oi.id) as sales,
            SUM(oi.total_price) as revenue
        FROM sn_rest_order_items oi
        JOIN sn_rest_menu_items mi ON oi.menu_item_id = mi.id
        JOIN sn_rest_orders o ON oi.order_id = o.id
        WHERE o.restaurant_id = ? AND o.created_at >= ?
        GROUP BY mi.id, mi.name
        ORDER BY sales DESC
        LIMIT 5
    ]], {restaurantId, currentMonthStart})
    
    
    local peakHours = MySQL.query.await([[
        SELECT 
            HOUR(created_at) as hour,
            COUNT(*) as order_count
        FROM sn_rest_orders 
        WHERE restaurant_id = ? AND created_at >= ?
        GROUP BY HOUR(created_at)
        ORDER BY order_count DESC
        LIMIT 1
    ]], {restaurantId, currentMonthStart})
    
    -- Top selling item this month
    local topItem = MySQL.query.await([[
        SELECT mi.name
        FROM sn_rest_order_items oi
        JOIN sn_rest_menu_items mi ON oi.menu_item_id = mi.id
        JOIN sn_rest_orders o ON oi.order_id = o.id
        WHERE o.restaurant_id = ? AND o.created_at >= ?
        GROUP BY mi.id, mi.name
        ORDER BY COUNT(oi.id) DESC
        LIMIT 1
    ]], {restaurantId, currentMonthStart})
    
    
    local monthlyGrowth = 0
    if lastMonthData.total_revenue > 0 then
        monthlyGrowth = ((currentMonthData.total_revenue - lastMonthData.total_revenue) / lastMonthData.total_revenue) * 100
    end
    
    local orderGrowth = 0
    if lastMonthData.total_orders > 0 then
        orderGrowth = ((currentMonthData.total_orders - lastMonthData.total_orders) / lastMonthData.total_orders) * 100
    end
    
    
    local weeklyData = {}
    local daysOfWeek = {"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"}
    for i = 0, 6 do
        local date = os.date('%Y-%m-%d', os.time() - (i * 24 * 60 * 60))
        local dayAnalytics = MySQL.query.await('SELECT * FROM sn_rest_analytics WHERE restaurant_id = ? AND date = ?', {restaurantId, date})
        local dayData = dayAnalytics[1] or {total_orders = 0, total_revenue = 0}
        
        
        if not dayAnalytics[1] then
            local dayOrders = MySQL.query.await('SELECT COUNT(*) as total_orders, SUM(total_amount) as total_revenue FROM sn_rest_orders WHERE restaurant_id = ? AND DATE(created_at) = ?', {restaurantId, date})
            if dayOrders[1] then
                dayData.total_orders = tonumber(dayOrders[1].total_orders) or 0
                dayData.total_revenue = tonumber(dayOrders[1].total_revenue) or 0
            end
        else
            dayData.total_revenue = tonumber(dayData.total_revenue) or 0
            dayData.total_orders = tonumber(dayData.total_orders) or 0
        end
        
        table.insert(weeklyData, 1, {
            day = daysOfWeek[7 - i],
            earnings = dayData.total_revenue,
            orders = dayData.total_orders
        })
    end
    
    
    local formattedPopularItems = {}
    for _, item in ipairs(popularItems) do
        table.insert(formattedPopularItems, {
            name = item.name,
            sales = tonumber(item.sales) or 0,
            revenue = tonumber(item.revenue) or 0
        })
    end
 
    cb({
        todayEarnings = todayData.total_revenue or 0,
        yesterdayEarnings = yesterdayData.total_revenue or 0,
        monthlyEarnings = currentMonthData.total_revenue or 0,
        lastMonthEarnings = lastMonthData.total_revenue or 0,
        todayOrders = todayData.total_orders or 0,
        monthlyOrders = currentMonthData.total_orders or 0,
        averageOrderValue = todayData.total_orders > 0 and (todayData.total_revenue / todayData.total_orders) or 0,
        customerSatisfaction = 4.7,
        topSellingItem = topItem[1] and topItem[1].name or "No Data",
        busyHours = peakHours[1] and string.format("%02d:00 - %02d:00", peakHours[1].hour, (peakHours[1].hour + 1) % 24) or "No Data",
        weeklyData = weeklyData,
        monthlyGrowth = monthlyGrowth,
        orderGrowth = orderGrowth,
        popularItems = formattedPopularItems
    })
end)

Lib.registerCallback('nn_food:getTVDisplays', function(source, cb, restaurantId)
    local tvDisplays = MySQL.query.await('SELECT * FROM sn_rest_tv_displays WHERE restaurant_id = ? AND is_active = 1', {restaurantId})
    
    for _, display in ipairs(tvDisplays) do
        if display.custom_content then
            local success, parsedContent = pcall(json.decode, display.custom_content)
            if success then
                display.custom_content = parsedContent
            else
                display.custom_content = nil
            end
        end
    end
    
    cb(tvDisplays)
end)

Lib.registerCallback('nn_food:getOrderQueue', function(source, cb, restaurantId)
    local restaurant = MySQL.query.await('SELECT * FROM sn_restaurants WHERE id = ?', {restaurantId})
    if not restaurant[1] then
        cb(nil)
        return
    end
    
    local orders = MySQL.query.await([[
        SELECT id, order_number, status, created_at, total_amount, order_type, notes
        FROM sn_rest_orders 
        WHERE restaurant_id = ? AND status IN ('pending', 'cooking', 'ready') 
        ORDER BY created_at ASC
    ]], {restaurantId})
    
    local formattedOrders = {}
    for _, order in pairs(orders) do
        local orderNum = order.id
        if order.order_number then
            local numString = string.match(order.order_number, "%d+")
            if numString then
                orderNum = tonumber(numString)
            end
        end
        
        local statusText = 'PENDING'
        if order.status == 'cooking' then
            statusText = 'COOKING'
        elseif order.status == 'ready' then
            statusText = 'READY'
        end
        
        table.insert(formattedOrders, {
            id = order.id,
            orderNumber = orderNum,
            status = order.status,
            statusText = statusText,
            orderType = string.upper(order.order_type or 'dine_in'):gsub('_', ' '),
            createdAt = order.created_at,
            totalAmount = order.total_amount,
            notes = order.notes
        })
    end
    
    cb({
        restaurantData = restaurant[1],
        orders = formattedOrders
    })
end)

Lib.registerCallback('nn_food:getKitchenOrders', function(source, cb, restaurantId)
    local restaurant = MySQL.query.await('SELECT * FROM sn_restaurants WHERE id = ?', {restaurantId})
    if not restaurant[1] then
        cb(nil)
        return
    end
    
    local orders = MySQL.query.await([[
        SELECT o.id, o.order_number, o.status, o.created_at, o.total_amount, o.order_type, o.notes,
               oi.id as item_id, oi.quantity, oi.special_instructions,
               mi.name as item_name, mi.price
        FROM sn_rest_orders o
        LEFT JOIN sn_rest_order_items oi ON o.id = oi.order_id
        LEFT JOIN sn_rest_menu_items mi ON oi.menu_item_id = mi.id
        WHERE o.restaurant_id = ? AND o.status IN ('pending', 'cooking', 'ready')
        ORDER BY o.created_at ASC, oi.id ASC
    ]], {restaurantId})
    
    local formattedOrders = {}
    local orderMap = {}
    
    for _, row in pairs(orders) do
        if not orderMap[row.id] then
            orderMap[row.id] = {
                id = tostring(row.id),
                orderNumber = row.order_number or tostring(row.id),
                status = row.status,
                items = {},
                orderTime = row.created_at,
                orderType = string.upper(row.order_type or 'dine_in'):gsub('_', ' '),
                tableNumber = nil,
                notes = row.notes
            }
        end
        
        if row.item_id then
            table.insert(orderMap[row.id].items, {
                id = tostring(row.item_id),
                name = string.upper(row.item_name or 'Unknown Item'),
                quantity = row.quantity or 1,
                notes = row.special_instructions
            })
        end
    end
    
    for _, order in pairs(orderMap) do
        table.insert(formattedOrders, order)
    end
    
    cb({
        restaurantData = restaurant[1],
        orders = formattedOrders
    })
end)

Lib.registerCallback('nn_food:getPOSOrders', function(source, cb, restaurantId)
    local restaurant = MySQL.query.await('SELECT * FROM sn_restaurants WHERE id = ?', {restaurantId})
    if not restaurant[1] then
        cb(nil)
        return
    end
    
    local orders = MySQL.query.await([[
        SELECT o.id, o.order_number, o.status, o.created_at, o.total_amount, o.order_type, o.notes,
               oi.id as item_id, oi.quantity, oi.special_instructions, oi.unit_price, oi.total_price,
               mi.name as item_name
        FROM sn_rest_orders o
        LEFT JOIN sn_rest_order_items oi ON o.id = oi.order_id
        LEFT JOIN sn_rest_menu_items mi ON oi.menu_item_id = mi.id
        WHERE o.restaurant_id = ?
        ORDER BY o.created_at DESC, oi.id ASC
    ]], {restaurantId})
    
    local formattedOrders = {}
    local orderMap = {}
    
    for _, row in pairs(orders) do
        if not orderMap[row.id] then
            orderMap[row.id] = {
                id = row.id,
                order_number = row.order_number or tostring(row.id),
                order_type = row.order_type or 'dine_in',
                status = row.status or 'pending',
                total_amount = row.total_amount or 0,
                created_at = row.created_at,
                notes = row.notes,
                items = {}
            }
        end
        
        if row.item_id then
            table.insert(orderMap[row.id].items, {
                id = tostring(row.item_id),
                name = row.item_name or 'Unknown Item',
                quantity = row.quantity or 1,
                unit_price = row.unit_price or 0,
                total_price = row.total_price or 0,
                special_instructions = row.special_instructions
            })
        end
    end
    
    for _, order in pairs(orderMap) do
        table.insert(formattedOrders, order)
    end
    
    cb({
        restaurantData = restaurant[1],
        orders = formattedOrders
    })
end)

Lib.registerCallback('nn_food:getKioskPositions', function(source, cb)
    local kiosks = MySQL.query.await('SELECT * FROM sn_rest_pos_systems WHERE device_type = "kiosk" AND position_x IS NOT NULL AND position_y IS NOT NULL AND position_z IS NOT NULL', {})
    cb(kiosks)
end)

Lib.registerCallback('nn_food:getPOSPositions', function(source, cb)
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return cb({})
    end

    local posSystems = MySQL.query.await('SELECT * FROM sn_rest_pos_systems WHERE device_type = "pos" AND position_x IS NOT NULL AND position_y IS NOT NULL AND position_z IS NOT NULL', {})
    cb(posSystems)
end)

Lib.registerCallback('nn_food:getKioskData', function(source, cb, restaurantId)
    local restaurant = MySQL.query.await('SELECT * FROM sn_restaurants WHERE id = ?', {restaurantId})
    if not restaurant[1] then
        cb(nil)
        return
    end
    
    local categories = MySQL.query.await([[
        SELECT 
            c.id as category_id,
            c.name as category_name,
            c.description as category_description,
            mi.id as item_id,
            mi.name as item_name,
            mi.description as item_description,
            mi.price,
            mi.image_url,
            mi.recipe_id
        FROM sn_rest_menu_categories c
        LEFT JOIN sn_rest_menu_items mi ON c.id = mi.category_id AND mi.is_available = 1
        WHERE c.restaurant_id = ? AND c.is_active = 1
        ORDER BY c.display_order, mi.display_order
    ]], {restaurantId})
    
    local menuData = {}
    local categoryMap = {}
    
    for _, row in pairs(categories) do
        local categoryId = row.category_id
        
        if not categoryMap[categoryId] then
            categoryMap[categoryId] = {
                id = categoryId,
                name = row.category_name,
                description = row.category_description,
                items = {}
            }
            table.insert(menuData, categoryMap[categoryId])
        end
        
        if row.item_id then
            table.insert(categoryMap[categoryId].items, {
                id = tostring(row.item_id),
                name = row.item_name,
                description = row.item_description,
                price = tonumber(row.price),
                image_url = row.image_url,
                recipe_id = row.recipe_id
            })
        end
    end
    
    cb({
        restaurant = restaurant[1],
        menu = menuData
    })
end)

Lib.registerCallback('nn_food:getPOSData', function(source, cb, restaurantId)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb(false)
    end

    local restaurant = MySQL.query.await('SELECT * FROM sn_restaurants WHERE id = ?', {restaurantId})
    if not restaurant[1] then return cb(false) end

    local categories = MySQL.query.await('SELECT * FROM sn_rest_menu_categories WHERE restaurant_id = ? ORDER BY id ASC', {restaurantId})
    local menuData = {}

    for _, category in pairs(categories) do
        local items = MySQL.query.await([[
            SELECT mi.*, r.name as recipe_name, r.image_url
            FROM sn_rest_menu_items mi
            LEFT JOIN sn_rest_recipes r ON mi.recipe_id = r.id
            WHERE mi.category_id = ? AND mi.is_available = 1
            ORDER BY mi.id ASC
        ]], {category.id})

        local formattedItems = {}
        for _, item in pairs(items) do
            table.insert(formattedItems, {
                id = tostring(item.id),
                name = item.name,
                price = tonumber(item.price),
                image_url = item.image_url,
                recipe_id = item.recipe_id,
                description = item.description
            })
        end

        table.insert(menuData, {
            id = category.id,
            name = category.name,
            description = category.description,
            items = formattedItems
        })
    end

    cb({
        restaurant = restaurant[1],
        menu = menuData
    })
end)

RegisterNetEvent('nn_food:placeKioskOrder', function(orderData)
    local src = source
    local playerData = bridge.framework.getPlayerData(src)
    
    local total = orderData.total
    local items = orderData.items
    
    if not items or #items == 0 then
        bridge.notification.show(src, {
            message = T('no_items_in_order'),
            type = 'error'
        })
        return
    end
    
    local firstItemId = items[1].item.id
    local restaurantData = MySQL.query.await('SELECT restaurant_id FROM sn_rest_menu_items WHERE id = ?', {firstItemId})
    if not restaurantData[1] then
        bridge.notification.show(src, {
            message = T('invalid_order_data'),
            type = 'error'
        })
        return
    end
    
    local restaurantId = restaurantData[1].restaurant_id
    
    if playerData.money.cash < total and playerData.money.bank < total then
        bridge.notification.show(src, {
            message = T('not_enough_money'),
            type = 'error'
        })
        return
    end
    
    local paymentMethod = 'cash'
    if playerData.money.cash >= total then
        bridge.framework.removeMoney(src, 'cash', total)
    else
        bridge.framework.removeMoney(src, 'bank', total)
        paymentMethod = 'bank'
    end
    
    local orderNumber = 'K-' .. math.random(100, 999)
    
    local orderId = MySQL.insert.await('INSERT INTO sn_rest_orders (restaurant_id, order_number, customer_identifier, order_type, total_amount, payment_method, status, order_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        orderNumber,
        playerData.identifier,
        'kiosk',
        total,
        paymentMethod,
        'pending',
        os.date('%Y-%m-%d %H:%M:%S')
    })
    
    for _, orderItem in pairs(items) do
        MySQL.insert.await('INSERT INTO sn_rest_order_items (order_id, menu_item_id, quantity, unit_price, total_price) VALUES (?, ?, ?, ?, ?)', {
            orderId,
            orderItem.item.id,
            orderItem.quantity,
            orderItem.item.price,
            orderItem.item.price * orderItem.quantity
        })
    end
    
    local today = os.date('%Y-%m-%d')
    local existingAnalytics = MySQL.query.await('SELECT * FROM sn_rest_analytics WHERE restaurant_id = ? AND date = ?', {restaurantId, today})
    
    if existingAnalytics[1] then
        MySQL.update.await('UPDATE sn_rest_analytics SET total_orders = total_orders + 1, total_revenue = total_revenue + ? WHERE restaurant_id = ? AND date = ?', {
            total, restaurantId, today
        })
    else
        MySQL.insert.await('INSERT INTO sn_rest_analytics (restaurant_id, date, total_orders, total_revenue) VALUES (?, ?, ?, ?)', {
            restaurantId, today, 1, total
        })
    end
    
    local ticketData = GenerateTicketData(orderId, orderNumber, 'kiosk', nil, items, total, paymentMethod, 'Self-Service', restaurantId)
    
    local ticketMetadata = {
        ticketData = ticketData
    }
    
    bridge.inventory.addItem(src, Config.TicketSystem.TicketItem, 1, ticketMetadata)
    
    bridge.notification.show(src, {
        message = T('order_placed_successfully', orderNumber),
        type = 'success'
    })
    
    TriggerClientEvent('nn_food:refreshTVDisplays', -1, restaurantId)
end)

RegisterNetEvent('nn_food:updateOrderStatus', function(data)
    local src = source
    local orderId = data.orderId
    local newStatus = data.status
    local restaurantId = data.restaurantId
    
    MySQL.update.await('UPDATE sn_rest_orders SET status = ? WHERE id = ? AND restaurant_id = ?', {
        newStatus, orderId, restaurantId
    })
    
    bridge.notification.show(src, {
        message = T('order_status_updated_successfully'),
        type = 'success'
    })
    
    TriggerClientEvent('nn_food:refreshTVDisplays', -1, restaurantId)
    
    TriggerClientEvent('nn_food:refreshPOSOrders', -1, restaurantId)
end)

RegisterNetEvent('nn_food:processPOSOrder', function(orderData)
    local src = source
    local playerData = bridge.framework.getPlayerData(src)
    
    local total = orderData.total * 1.085
    local items = orderData.items
    local orderType = orderData.orderType or 'dine_in'
    local tableNumber = orderData.tableNumber
    
    if not items or #items == 0 then
        bridge.notification.show(src, {
            message = T('no_items_in_order'),
            type = 'error'
        })
        return
    end
    
    local firstItemId = items[1].id
    local restaurantData = MySQL.query.await('SELECT restaurant_id FROM sn_rest_menu_items WHERE id = ?', {firstItemId})
    if not restaurantData[1] then
        bridge.notification.show(src, {
            message = T('invalid_order_data'),
            type = 'error'
        })
        return
    end
    
    local restaurantId = restaurantData[1].restaurant_id
    
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end
    
    local orderNumber = 'POS-' .. math.random(10000, 99999)
    local orderId = MySQL.insert.await('INSERT INTO sn_rest_orders (restaurant_id, order_number, employee_id, order_type, total_amount, payment_method, status, order_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        orderNumber,
        nil,
        orderType:lower():gsub(' ', '_'),
        total,
        'pending',
        'pending',
        os.date('%Y-%m-%d %H:%M:%S')
    })
    
    for _, orderItem in pairs(items) do
        MySQL.insert.await('INSERT INTO sn_rest_order_items (order_id, menu_item_id, quantity, unit_price, total_price) VALUES (?, ?, ?, ?, ?)', {
            orderId,
            orderItem.id,
            orderItem.quantity,
            orderItem.price,
            orderItem.price * orderItem.quantity
        })
    end
    
    
    local employeeCoords = GetEntityCoords(GetPlayerPed(src))
    local closestPlayer = nil
    local closestDistance = 999999.0
    
    for _, playerId in ipairs(GetPlayers()) do
        if tonumber(playerId) ~= src or Config.devMode then 
            local playerCoords = GetEntityCoords(GetPlayerPed(tonumber(playerId)))
            local distance = #(employeeCoords - playerCoords)
            
            if distance < closestDistance and distance < 10.0 then
                closestPlayer = tonumber(playerId)
                closestDistance = distance
            end
        end
    end
    
    if closestPlayer then
        
        local billItems = {}
        local subtotal = 0
        
        for _, item in pairs(items) do
            local itemTotal = item.price * item.quantity
            subtotal = subtotal + itemTotal
            
            table.insert(billItems, {
                name = item.name,
                quantity = item.quantity,
                price = item.price,
                total = itemTotal
            })
        end
        
        local tax = total - subtotal
        local restaurantName = GetRestaurantName(restaurantId)
        
        local billData = {
            billId = orderId,
            restaurantName = restaurantName:upper(),
            serverName = playerData.name.full,
            items = billItems,
            subtotal = subtotal,
            tax = tax,
            total = total,
            timestamp = os.date('%Y-%m-%d %H:%M:%S'),
            orderNumber = orderNumber,
            orderType = orderType,
            tableNumber = tableNumber
        }
        
        ShowBillToPlayer(closestPlayer, billData)
        
        bridge.notification.show(src, {
            message = T('bill_sent_to_customer'),
            type = 'info'
        })
    else
        bridge.notification.show(src, {
            message = T('no_customer_found_nearby'),
            type = 'error'
        })
    end
    
    
    TriggerClientEvent('nn_food:refreshTVDisplays', -1, restaurantId)
    
    TriggerClientEvent('nn_food:orderCreated', src, {success = true})
    
    
    TriggerClientEvent('nn_food:refreshPOSOrders', -1, restaurantId)
end)


Lib.registerCallback('nn_food:requestPOSOrders', function(source, cb, data)
    local src = source
    local restaurantId = data.restaurantId
    
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb({orders = {}})
    end
    
    
    local orders = MySQL.query.await([[
        SELECT 
            o.id,
            o.order_number,
            o.order_type,
            o.status,
            o.total_amount,
            o.order_date as created_at,
            o.notes
        FROM sn_rest_orders o
        WHERE o.restaurant_id = ? AND o.status != 'completed'
        ORDER BY o.order_date DESC
    ]], {restaurantId})
    
    
    for i, order in ipairs(orders) do
        local orderItems = MySQL.query.await([[
            SELECT 
                oi.id,
                mi.name,
                oi.quantity,
                oi.unit_price,
                oi.total_price,
                oi.special_instructions
            FROM sn_rest_order_items oi
            JOIN sn_rest_menu_items mi ON oi.menu_item_id = mi.id
            WHERE oi.order_id = ?
        ]], {order.id})
        
        orders[i].items = orderItems
    end
    
    cb({orders = orders})
end)


RegisterNetEvent('nn_food:clearCancelledOrder', function(orderId)
    local src = source
    
    
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_general'),
            type = 'error'
        })
        return
    end
    
    
    local orderData = MySQL.single.await('SELECT restaurant_id, status FROM sn_rest_orders WHERE id = ?', {orderId})
    if not orderData then
        bridge.notification.show(src, {
            message = T('order_not_found'),
            type = 'error'
        })
        return
    end
    
    
    if orderData.status ~= 'cancelled' then
        bridge.notification.show(src, {
            message = T('only_cancelled_orders_can_be_cleared'),
            type = 'error'
        })
        return
    end
    
    if orderData.restaurant_id ~= playerRestaurant.restaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end
    
    MySQL.query.await('DELETE FROM sn_rest_order_items WHERE order_id = ?', {orderId})
    
    MySQL.query.await('DELETE FROM sn_rest_orders WHERE id = ?', {orderId})
    
    bridge.notification.show(src, {
        message = T('cancelled_order_cleared_successfully'),
        type = 'success'
    })
    
    TriggerClientEvent('nn_food:refreshPOSOrders', -1, orderData.restaurant_id)
end)

Lib.registerCallback('nn_food:clearCancelledOrder', function(source, cb, data)
    local src = source
    local orderId = data.orderId
    
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant then
        return cb({success = false, message = T('access_denied_not_employee_general')})
    end
    
    local orderData = MySQL.single.await('SELECT restaurant_id, status FROM sn_rest_orders WHERE id = ?', {orderId})
    if not orderData then
        return cb({success = false, message = T('order_not_found')})
    end
    
    if orderData.status ~= 'cancelled' then
        return cb({success = false, message = T('only_cancelled_orders_can_be_cleared')})
    end
    
    if orderData.restaurant_id ~= playerRestaurant.restaurantId then
        return cb({success = false, message = T('access_denied_not_employee_restaurant')})
    end
    
    MySQL.query.await('DELETE FROM sn_rest_order_items WHERE order_id = ?', {orderId})
    
    MySQL.query.await('DELETE FROM sn_rest_orders WHERE id = ?', {orderId})
    
    TriggerClientEvent('nn_food:refreshPOSOrders', -1, orderData.restaurant_id)
    
    return cb({success = true, message = T('cancelled_order_cleared_successfully')})
end)

-- Employee Invitation System
RegisterNetEvent('nn_food:sendEmployeeInvitation', function(invitationData)
    local src = source
    
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant or playerRestaurant.restaurantId ~= invitationData.restaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end
    
    local inviterCoords = GetEntityCoords(GetPlayerPed(src))
    local closestPlayer = nil
    local closestDistance = 999999.0
    
    for _, playerId in ipairs(GetPlayers()) do
        if tonumber(playerId) ~= src then
            local playerCoords = GetEntityCoords(GetPlayerPed(tonumber(playerId)))
            local distance = #(inviterCoords - playerCoords)
            
            if distance < closestDistance and distance < 10.0 then
                closestPlayer = tonumber(playerId)
                closestDistance = distance
            end
        end
    end
    
    if not closestPlayer then
        bridge.notification.show(src, {
            message = T('no_player_found_nearby'),
            type = 'error'
        })
        return
    end
    
    local inviterData = bridge.framework.getPlayerData(src)
    local inviteeData = bridge.framework.getPlayerData(closestPlayer)
    
    if not inviterData or not inviteeData then
        bridge.notification.show(src, {
            message = T('failed_to_get_player_data'),
            type = 'error'
        })
        return
    end
    
    local existingEmployee = MySQL.single.await('SELECT * FROM sn_rest_employees WHERE identifier = ? AND restaurant_id = ? AND is_active = 1', {
        inviteeData.identifier, invitationData.restaurantId
    })
    
    if existingEmployee then
        bridge.notification.show(src, {
            message = T('player_already_employee'),
            type = 'error'
        })
        return
    end
    
    local existingInvitation = MySQL.single.await('SELECT * FROM sn_rest_invitations WHERE invitee_identifier = ? AND restaurant_id = ? AND status = "pending"', {
        inviteeData.identifier, invitationData.restaurantId
    })
    
    if existingInvitation then
        bridge.notification.show(src, {
            message = T('player_already_has_pending_invitation'),
            type = 'error'
        })
        return
    end
    
    local invitationId = MySQL.insert.await('INSERT INTO sn_rest_invitations (restaurant_id, inviter_identifier, inviter_name, invitee_identifier, invitee_name, position, salary, is_boss, is_manager) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', {
        invitationData.restaurantId,
        inviterData.identifier,
        inviterData.name.full,
        inviteeData.identifier,
        inviteeData.name.full,
        invitationData.position,
        invitationData.salary,
        invitationData.isBoss and 1 or 0,
        invitationData.isManager and 1 or 0
    })
    
    TriggerClientEvent('nn_food:receiveEmployeeInvitation', closestPlayer, {
        invitationId = invitationId,
        restaurantName = GetRestaurantName(invitationData.restaurantId),
        inviterName = inviterData.name.full,
        position = invitationData.position,
        salary = invitationData.salary,
        isBoss = invitationData.isBoss,
        isManager = invitationData.isManager
    })
    
    bridge.notification.show(src, {
        message = T('employee_invitation_sent_successfully'),
        type = 'success'
    })
end)

RegisterCommand('acceptinvite', function(source, args, rawCommand)
    local src = source
    local playerData = bridge.framework.getPlayerData(src)
    
    if not playerData then
        bridge.notification.show(src, {
            message = T('failed_to_get_player_data'),
            type = 'error'
        })
        return
    end
    
    local pendingInvitations = MySQL.query.await('SELECT * FROM sn_rest_invitations WHERE invitee_identifier = ? AND status = "pending" AND expires_at > NOW()', {
        playerData.identifier
    })
    
    if not pendingInvitations or #pendingInvitations == 0 then
        bridge.notification.show(src, {
            message = T('no_pending_invitations'),
            type = 'info'
        })
        return
    end
    
    local invitation = pendingInvitations[1]
    
    MySQL.update.await('UPDATE sn_rest_invitations SET status = "accepted" WHERE id = ?', {invitation.id})
    
    MySQL.insert.await('INSERT INTO sn_rest_employees (restaurant_id, identifier, name, position, salary, performance, hire_date, is_boss, is_manager) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', {
        invitation.restaurant_id,
        invitation.invitee_identifier,
        invitation.invitee_name,
        invitation.position,
        invitation.salary,
        75,
        os.date('%Y-%m-%d'),
        invitation.is_boss,
        invitation.is_manager
    })
    
    bridge.notification.show(src, {
        message = T('invitation_accepted', GetRestaurantName(invitation.restaurant_id)),
        type = 'success'
    })
    
    TriggerClientEvent('nn_food:employeeInvitationAccepted', src, invitation.restaurant_id)
    
    local inviterPlayer = nil
    for _, playerId in ipairs(GetPlayers()) do
        local player = bridge.framework.getPlayerData(tonumber(playerId))
        if player and player.identifier == invitation.inviter_identifier then
            inviterPlayer = tonumber(playerId)
            break
        end
    end
    
    if inviterPlayer then
        bridge.notification.show(inviterPlayer, {
            message = invitation.invitee_name .. ' has accepted your employee invitation!',
            type = 'success'
        })
    end
end, false)

RegisterCommand('declineinvite', function(source, args, rawCommand)
    local src = source
    local playerData = bridge.framework.getPlayerData(src)
    
    if not playerData then
        bridge.notification.show(src, {
            message = T('failed_to_get_player_data'),
            type = 'error'
        })
        return
    end
    
    local pendingInvitations = MySQL.query.await('SELECT * FROM sn_rest_invitations WHERE invitee_identifier = ? AND status = "pending" AND expires_at > NOW()', {
        playerData.identifier
    })
    
    if not pendingInvitations or #pendingInvitations == 0 then
        bridge.notification.show(src, {
            message = T('no_pending_invitations'),
            type = 'info'
        })
        return
    end
    
    local invitation = pendingInvitations[1]
    MySQL.update.await('UPDATE sn_rest_invitations SET status = "declined" WHERE id = ?', {invitation.id})
    
    bridge.notification.show(src, {
        message = T('invitation_declined'),
        type = 'info'
    })
    
    local inviterPlayer = nil
    for _, playerId in ipairs(GetPlayers()) do
        local player = bridge.framework.getPlayerData(tonumber(playerId))
        if player and player.identifier == invitation.inviter_identifier then
            inviterPlayer = tonumber(playerId)
            break
        end
    end
    
    if inviterPlayer then
        bridge.notification.show(inviterPlayer, {
            message = invitation.invitee_name .. ' has declined your employee invitation',
            type = 'info'
        })
    end
end, false)

Lib.registerCallback('nn_food:getPlayerRole', function(source, cb, restaurantId)
    local playerData = bridge.framework.getPlayerData(source)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb({ role = 'Employee', access = Config.RoleAccess.Employee })
    end

    local employee = MySQL.query.await('SELECT is_boss, is_manager FROM sn_rest_employees WHERE restaurant_id = ? AND identifier = ? AND is_active = 1', {
        restaurantId, 
        playerData.identifier
    })
    if not employee[1] then
        return cb({ role = 'Employee', access = Config.RoleAccess.Employee })
    end
    
    local emp = employee[1]
    local role = 'Employee'
    local access = Config.RoleAccess.Employee
    
    if emp.is_boss then
        role = 'Boss'
        access = Config.RoleAccess.Boss
    elseif emp.is_manager then
        role = 'Manager'
        access = Config.RoleAccess.Manager
    end
    
    cb({ role = role, access = access })
end)