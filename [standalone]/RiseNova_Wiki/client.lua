local RESOURCE_NAME = "RiseNova_Wiki"
local isOpen = false

local RN_Framework = "standalone"
local QBCore = nil
local ESX = nil

CreateThread(function()
    local current = GetCurrentResourceName()
    if current ~= RESOURCE_NAME then
        print(("[RiseNova_Wiki] WARNING: Resource name is '%s'. It MUST be '%s' for the script to run properly.")
            :format(current, RESOURCE_NAME))
    end
end)

CreateThread(function()
    if GetResourceState("qb-core") == "started" then
        RN_Framework = "qbcore"
        QBCore = exports["qb-core"]:GetCoreObject()
        print("[RiseNova_Wiki] Framework detected: qb-core")
    elseif GetResourceState("es_extended") == "started" then
        RN_Framework = "esx"
        print("[RiseNova_Wiki] Framework detected: es_extended")
        CreateThread(function()
            while not ESX do
                TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
                Wait(100)
            end
        end)
    elseif GetResourceState("qbx_core") == "started" then
        RN_Framework = "qbox"
        print("[RiseNova_Wiki] Framework detected: qbx_core")
    else
        print("[RiseNova_Wiki] Framework detected: standalone")
    end
end)

local function GetRNPlayerContext()
    local ctx = {
        framework = RN_Framework,
        job = nil,
        jobLabel = nil,
        jobGrade = nil,
        group = nil,
        isStaff = false
    }

    if RN_Framework == "qbcore" and QBCore then
        local ply = QBCore.Functions.GetPlayerData()
        if ply then
            if ply.job then
                ctx.job = ply.job.name
                ctx.jobLabel = ply.job.label
                local g = ply.job.grade
                if type(g) == "table" then
                    ctx.jobGrade = g.name or g.level or g
                else
                    ctx.jobGrade = g
                end
            end
            if ply.group then
                ctx.group = ply.group
                local grp = tostring(ply.group)
                if grp == "admin" or grp == "god" or grp == "mod" or grp == "superadmin" then
                    ctx.isStaff = true
                end
            end
        end

    elseif RN_Framework == "esx" and ESX then
        local ply = ESX.GetPlayerData()
        if ply then
            if ply.job then
                ctx.job = ply.job.name
                ctx.jobLabel = ply.job.label
                ctx.jobGrade = ply.job.grade_label or ply.job.grade
            end
            if ply.group then
                ctx.group = ply.group
                local grp = tostring(ply.group)
                if grp == "admin" or grp == "superadmin" or grp == "mod" or grp == "staff" then
                    ctx.isStaff = true
                end
            end
        end

    elseif RN_Framework == "qbox" then
        local ok, ply = pcall(function()
            return exports["qbx_core"]:GetPlayerData()
        end)
        if ok and ply then
            if ply.job then
                ctx.job = ply.job.name
                ctx.jobLabel = ply.job.label
                local g = ply.job.grade
                if type(g) == "table" then
                    ctx.jobGrade = g.name or g.level or g
                else
                    ctx.jobGrade = g
                end
            end
        end
    end

    return ctx
end

RegisterCommand(Config.OpenCommand, function()
    ToggleWiki()
end, false)

RegisterKeyMapping(
    Config.OpenCommand,
    'Open RiseNova Wiki',
    'keyboard',
    Config.DefaultKey or 'F5'
)

function ToggleWiki()
    isOpen = not isOpen

    if isOpen then
        SetNuiFocus(true, true)
        SetNuiFocusKeepInput(false)

        local playerCtx = GetRNPlayerContext()

        local payload = {
            action       = "open",
            serverName   = Config.ServerName,
            panelTitle   = Config.PanelTitle,
            subtitle     = Config.Subtitle,
            theme        = Config.Theme,
            categories   = Config.Categories,
            player       = playerCtx
        }

        SendNUIMessage(payload)
    else
        SetNuiFocus(false, false)
        SetNuiFocusKeepInput(false)
        SendNUIMessage({ action = "close" })
    end
end

RegisterNUICallback("rn_close", function(_, cb)
    isOpen = false
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    cb("ok")
end)

CreateThread(function()
    while true do
        if isOpen then
            DisableAllControlActions(0)
        end
        Wait(0)
    end
end)
