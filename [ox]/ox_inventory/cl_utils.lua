-- ============================================
-- Cleaned Code Starts Here
-- ============================================

-- Variable to hold the core framework object (QBCore/Qbox object)
local FrameworkCore = nil

-- Detect Framework and get Core Object if QB/QBX
local detectedFramework = shared.framework
if detectedFramework == "qb" or detectedFramework == "qbx" then
    local qbCoreExport = exports["qb-core"]
    FrameworkCore = qbCoreExport.GetCoreObject(qbCoreExport)
end

-- Function: GetPlayerMoneyBalances
-- Retrieves the player's cash and bank balances based on the detected framework.
local function GetPlayerMoneyBalances()
    local cash = 0
    local bank = 0

    if shared.framework == "esx" then
        -- ESX Logic
        local ESX = exports.es_extended.getSharedObject()
        local playerData = ESX.GetPlayerData()

        local function getAccountMoney(accountName)
            for _, account in ipairs(playerData.accounts) do
                if account.name == accountName then
                    return account.money
                end
            end
            return 0
        end

        cash = getAccountMoney("money")
        bank = getAccountMoney("bank")
        
        return cash, bank

    elseif shared.framework == "qbx" or shared.framework == "qb" then
        -- QB/QBX Logic
        local playerData = exports["qb-core"].GetCoreObject().Functions.GetPlayerData()
        cash = playerData.money.cash
        bank = playerData.money.bank
        
        return cash, bank
    else
        -- Fallback for unsupported frameworks
        return 0, 0
    end
end

-- Function: SetupNotifyTheme
-- Creates a thread to initialize the NUI with theme and text settings for notifications.
CreateThread(function()
    -- Send Prism Theme Settings for notification themes
    SendNUIMessage({
        action = "setupNotifyTheme",
        data = {
            Prism = Prism.ThemeSettings
        }
    })
    
    -- Send Prism Theme Settings to update the UI theme (redundant, but preserved original logic)
    SendNUIMessage({
        action = "updateThemePrism",
        data = {
            ThemeSettings = Prism.ThemeSettings
        }
    })
end)

-- Function: SetupPrismInventory
-- The main function to send data to the NUI for displaying the inventory screen.
function SetupPrismInventory(leftInventoryData, rightInventoryData)
    -- Add mugshot URL to the left inventory data
    leftInventoryData.mugshot = mugshot

    -- Determine the player ID (citizenid if enabled, otherwise server ID)
    local playerId = nil
    if Prism.UseCitizenId and FrameworkCore then
        -- QB/QBX: Try to use citizenid
        local playerData = FrameworkCore.Functions.GetPlayerData()
        playerId = playerData.citizenid
    end
    
    -- Fallback: Use Player Server ID
    if not playerId then
        playerId = GetPlayerServerId(PlayerId())
    end
    
    leftInventoryData.id = playerId

    -- Get player balances and add them to the data
    local cash, bank = GetPlayerMoneyBalances()
    leftInventoryData.pdata = {
        money = cash,
        bank = bank
    }

    -- Add player slot count (presumably for inventory sizing)
    leftInventoryData.slots = shared.playerslots

    -- Send final payload to NUI
    SendNUIMessage({
        action = "setupInventory",
        data = {
            leftInventory = leftInventoryData,
            rightInventory = rightInventoryData,
            mouseTrailActive = Prism.mouseTrailActive,
            ThemeSettings = Prism.ThemeSettings,
            Texts = Prism.Texts,
            UseNativeLabeling = Prism.UseNativeLabeling
        }
    })
end

-- Expose the main function
SetupPrismInventory = SetupPrismInventory