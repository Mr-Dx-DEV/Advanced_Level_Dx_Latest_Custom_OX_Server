-- =============================================
-- N3X UI PACK - USAGE EXAMPLES
-- =============================================
-- This file contains examples of how to use all the UI components
-- Copy these examples into your own resources

-- =============================================
-- NOTIFICATION EXAMPLES
-- =============================================

-- Basic notification
RegisterCommand('test_notify', function()
    exports['n3x_uipack']:Notify({
        title = 'Success',
        description = 'This is a success notification!',
        type = 'success'
    })
end)

-- Error notification
RegisterCommand('test_error', function()
    exports['n3x_uipack']:Notify({
        title = 'Error',
        description = 'Something went wrong!',
        type = 'error',
        duration = 3000
    })
end)

-- Warning with custom icon
RegisterCommand('test_warning', function()
    exports['n3x_uipack']:Notify({
        title = 'Warning',
        description = 'This is a warning message',
        type = 'warning',
        icon = 'fa-exclamation-triangle',
        position = 'top-center'
    })
end)

-- Info notification
RegisterCommand('test_info', function()
    lib.notify({ -- Using lib directly (if override enabled)
        title = 'Information',
        description = 'This uses lib.notify but gets n3x styling!',
        type = 'info'
    })
end)

-- =============================================
-- PROGRESS BAR EXAMPLES
-- =============================================

-- Simple progress bar
RegisterCommand('test_progress', function()
    local success = exports['n3x_uipack']:Progress({
        label = 'Loading...',
        duration = 3000,
        type = 'bar',
        canCancel = true
    })

    if success then
        exports['n3x_uipack']:Notify({
            title = 'Complete',
            description = 'Progress finished!',
            type = 'success'
        })
    else
        exports['n3x_uipack']:Notify({
            title = 'Cancelled',
            description = 'Progress was cancelled',
            type = 'error'
        })
    end
end)

-- Progress circle with animation
RegisterCommand('test_progress_circle', function()
    local success = exports['n3x_uipack']:Progress({
        label = 'Crafting item...',
        duration = 5000,
        type = 'circle',
        canCancel = true,
        icon = 'fa-hammer',
        animation = {
            dict = 'amb@world_human_hammering@male@base',
            clip = 'base',
            flag = 49
        }
    })

    if success then
        print('Crafting complete!')
    end
end)

-- Progress with prop
RegisterCommand('test_progress_prop', function()
    exports['n3x_uipack']:Progress({
        label = 'Using tool...',
        duration = 4000,
        type = 'bar',
        animation = {
            dict = 'amb@world_human_hammering@male@base',
            clip = 'base'
        },
        prop = {
            model = `prop_tool_hammer`,
            bone = 60309,
            pos = vec3(0.0, 0.0, 0.0),
            rot = vec3(0.0, 0.0, 0.0)
        }
    })
end)

-- =============================================
-- INPUT DIALOG EXAMPLES
-- =============================================

-- Simple input
RegisterCommand('test_input', function()
    local input = exports['n3x_uipack']:InputDialog('User Input', {
        {
            type = 'input',
            label = 'Username',
            description = 'Enter your username',
            required = true,
            placeholder = 'JohnDoe123'
        }
    })

    if input then
        print('Username:', input['input-0'])
    end
end)

-- Multiple inputs
RegisterCommand('test_input_multi', function()
    local input = exports['n3x_uipack']:InputDialog('Registration Form', {
        {
            type = 'input',
            label = 'First Name',
            required = true
        },
        {
            type = 'input',
            label = 'Last Name',
            required = true
        },
        {
            type = 'number',
            label = 'Age',
            min = 18,
            max = 100,
            required = true
        },
        {
            type = 'select',
            label = 'Gender',
            options = {
                {value = 'male', label = 'Male'},
                {value = 'female', label = 'Female'},
                {value = 'other', label = 'Other'}
            }
        },
        {
            type = 'textarea',
            label = 'Bio',
            placeholder = 'Tell us about yourself...'
        },
        {
            type = 'checkbox',
            label = 'I agree to the terms and conditions'
        }
    })

    if input then
        print(json.encode(input, {indent = true}))
    end
end)

-- =============================================
-- CONTEXT MENU EXAMPLES
-- =============================================

-- Basic context menu
RegisterCommand('test_context', function()
    exports['n3x_uipack']:ShowContext('main_menu', 'Main Menu', {
        {
            title = 'Vehicle Options',
            description = 'Manage your vehicle',
            icon = 'fa-car',
            onSelect = function()
                print('Vehicle options selected')
            end
        },
        {
            title = 'Inventory',
            description = 'Open your inventory',
            icon = 'fa-box',
            onSelect = function()
                print('Inventory opened')
            end
        },
        {
            title = 'Settings',
            description = 'Configure settings',
            icon = 'fa-cog',
            arrow = true,
            onSelect = function()
                -- Open another menu
                exports['n3x_uipack']:HideContext()
                Wait(100)
                -- Show submenu here
            end
        },
        {
            title = 'Disabled Option',
            description = 'This option is not available',
            icon = 'fa-ban',
            disabled = true
        }
    })
end)

-- =============================================
-- SKILL CHECK EXAMPLES
-- =============================================

-- Easy skill check
RegisterCommand('test_skillcheck_easy', function()
    local success = exports['n3x_uipack']:SkillCheck('easy')

    if success then
        exports['n3x_uipack']:Notify({
            title = 'Success',
            description = 'Skill check passed!',
            type = 'success'
        })
    else
        exports['n3x_uipack']:Notify({
            title = 'Failed',
            description = 'Skill check failed!',
            type = 'error'
        })
    end
end)

-- Hard skill check
RegisterCommand('test_skillcheck_hard', function()
    local success = exports['n3x_uipack']:SkillCheck('hard')
    print('Result:', success)
end)

-- Custom skill check
RegisterCommand('test_skillcheck_custom', function()
    local success = exports['n3x_uipack']:SkillCheck({
        speed = 2.2,
        areaSize = 12,
        keys = 4
    })
    print('Custom skill check result:', success)
end)

-- =============================================
-- TEXT UI EXAMPLES
-- =============================================

-- Show text UI
RegisterCommand('test_textui_show', function()
    exports['n3x_uipack']:ShowTextUI({
        text = 'Press [E] to interact',
        icon = 'fa-hand-pointer',
        position = 'right'
    })
end)

-- Hide text UI
RegisterCommand('test_textui_hide', function()
    exports['n3x_uipack']:HideTextUI()
end)

-- Simple text UI
RegisterCommand('test_textui_simple', function()
    exports['n3x_uipack']:ShowTextUI('Press [E] to open door')

    -- Auto hide after 3 seconds
    SetTimeout(3000, function()
        exports['n3x_uipack']:HideTextUI()
    end)
end)

-- =============================================
-- ALERT DIALOG EXAMPLES
-- =============================================

-- Confirmation dialog
RegisterCommand('test_alert', function()
    local result = exports['n3x_uipack']:AlertDialog({
        header = 'Confirmation Required',
        content = 'Are you sure you want to delete this item?',
        centered = true,
        cancel = true,
        buttons = {
            {label = 'Delete', value = 'delete'},
            {label = 'Keep', value = 'keep'}
        }
    })

    if result == 'delete' then
        print('Item deleted')
    else
        print('Action cancelled')
    end
end)

-- Yes/No dialog
RegisterCommand('test_alert_yesno', function()
    local result = exports['n3x_uipack']:AlertDialog({
        header = 'Purchase Vehicle',
        content = 'Do you want to purchase this vehicle for $50,000?',
        buttons = {
            {label = 'Yes', value = 'yes'},
            {label = 'No', value = 'no'}
        }
    })

    if result == 'yes' then
        print('Vehicle purchased')
    end
end)

-- =============================================
-- NPC DIALOG EXAMPLES
-- =============================================

-- Simple NPC message
RegisterCommand('test_npc', function()
    exports['n3x_uipack']:NPCDialog({
        name = 'Shop Keeper',
        message = 'Welcome to my shop! Feel free to browse our selection.',
        duration = 4000
    })
end)

-- NPC with choices
RegisterCommand('test_npc_choice', function()
    local choice = exports['n3x_uipack']:NPCDialog({
        name = 'Quest Giver',
        avatar = 'https://i.pravatar.cc/150?img=1',
        message = 'I need help retrieving a package from the docks. Will you help me?',
        choices = {
            {label = 'Accept Quest', value = 'accept'},
            {label = 'Decline', value = 'decline'},
            {label = 'Ask for reward', value = 'reward'}
        }
    })

    if choice == 'accept' then
        exports['n3x_uipack']:Notify({
            title = 'Quest Accepted',
            description = 'Check your map for the location',
            type = 'success'
        })
    elseif choice == 'reward' then
        exports['n3x_uipack']:NPCDialog({
            name = 'Quest Giver',
            message = "I'll pay you $5,000 for your help!",
            duration = 3000
        })
    end
end)

-- =============================================
-- RADIAL MENU EXAMPLES
-- =============================================

-- Radial menu
RegisterCommand('test_radial', function()
    exports['n3x_uipack']:RadialMenu({
        {
            label = 'Home',
            value = 'home',
            icon = 'fa-home',
            onSelect = function()
                print('Home selected')
            end
        },
        {
            label = 'Inventory',
            value = 'inventory',
            icon = 'fa-box',
            onSelect = function()
                print('Inventory selected')
            end
        },
        {
            label = 'Phone',
            value = 'phone',
            icon = 'fa-mobile',
            onSelect = function()
                print('Phone selected')
            end
        },
        {
            label = 'Map',
            value = 'map',
            icon = 'fa-map',
            onSelect = function()
                print('Map selected')
            end
        },
        {
            label = 'Settings',
            value = 'settings',
            icon = 'fa-cog',
            onSelect = function()
                print('Settings selected')
            end
        }
    })
end)

-- Hide radial menu
RegisterCommand('test_radial_hide', function()
    exports['n3x_uipack']:HideRadial()
end)

-- =============================================
-- PRACTICAL EXAMPLE: Vehicle Interaction
-- =============================================

RegisterCommand('test_vehicle_menu', function()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if vehicle == 0 then
        exports['n3x_uipack']:Notify({
            title = 'Error',
            description = 'You must be in a vehicle',
            type = 'error'
        })
        return
    end

    exports['n3x_uipack']:ShowContext('vehicle_menu', 'Vehicle Options', {
        {
            title = 'Lock/Unlock',
            description = 'Toggle vehicle locks',
            icon = 'fa-lock',
            onSelect = function()
                print('Toggle locks')
                exports['n3x_uipack']:HideContext()
            end
        },
        {
            title = 'Engine',
            description = 'Toggle engine on/off',
            icon = 'fa-power-off',
            onSelect = function()
                print('Toggle engine')
                exports['n3x_uipack']:HideContext()
            end
        },
        {
            title = 'Hood',
            description = 'Open/close hood',
            icon = 'fa-car',
            onSelect = function()
                print('Toggle hood')
                exports['n3x_uipack']:HideContext()
            end
        },
        {
            title = 'Trunk',
            description = 'Open/close trunk',
            icon = 'fa-box-open',
            onSelect = function()
                print('Toggle trunk')
                exports['n3x_uipack']:HideContext()
            end
        }
    })
end)

-- =============================================
-- PRACTICAL EXAMPLE: Crafting System
-- =============================================

RegisterCommand('test_crafting', function()
    -- Show crafting menu
    local choice = exports['n3x_uipack']:InputDialog('Craft Item', {
        {
            type = 'select',
            label = 'Select Item',
            options = {
                {value = 'lockpick', label = 'Lockpick (2x Metal, 1x Plastic)'},
                {value = 'bandage', label = 'Bandage (3x Cloth)'},
                {value = 'armor', label = 'Armor (5x Kevlar, 2x Plate)'}
            }
        },
        {
            type = 'number',
            label = 'Quantity',
            min = 1,
            max = 10,
            required = true
        }
    })

    if not choice then return end

    local item = choice['input-0']
    local quantity = tonumber(choice['input-1']) or 1

    -- Show skill check
    local skillSuccess = exports['n3x_uipack']:SkillCheck('medium')

    if not skillSuccess then
        exports['n3x_uipack']:Notify({
            title = 'Failed',
            description = 'Crafting failed!',
            type = 'error'
        })
        return
    end

    -- Show progress
    local progressSuccess = exports['n3x_uipack']:Progress({
        label = 'Crafting ' .. item .. '...',
        duration = 5000,
        type = 'circle',
        canCancel = true,
        icon = 'fa-hammer',
        animation = {
            dict = 'amb@world_human_hammering@male@base',
            clip = 'base',
            flag = 49
        }
    })

    if progressSuccess then
        exports['n3x_uipack']:Notify({
            title = 'Success',
            description = 'Crafted ' .. quantity .. 'x ' .. item,
            type = 'success'
        })
    else
        exports['n3x_uipack']:Notify({
            title = 'Cancelled',
            description = 'Crafting was cancelled',
            type = 'warning'
        })
    end
end)

print('^2[N3X_UIPACK]^7 Example commands registered! Use /test_* to try them out')
