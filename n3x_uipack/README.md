# N3X UI Pack

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![FiveM](https://img.shields.io/badge/FiveM-Ready-green.svg)
![License](https://img.shields.io/badge/license-MIT-yellow.svg)

**N3X UI Pack** is an advanced UI library for FiveM that provides a complete wrapper for ox_lib with extensive customization options and beautiful, modern styling. Designed to work seamlessly with QBCore, ESX, and other frameworks using ox_lib.

## Features

- **Complete ox_lib Wrapper** - Drop-in replacement for all ox_lib UI functions
- **9 UI Components** - Notifications, Progress Bars/Circles, Input Dialogs, Context Menus, Skill Checks, Text UI, Alert Dialogs, NPC Dialogs, and Radial Menus
- **Highly Customizable** - Extensive configuration options for colors, positions, animations, and behavior
- **Modern Design** - Beautiful, responsive UI with smooth animations
- **Performance Optimized** - Lightweight and efficient
- **Framework Agnostic** - Works with QBCore, ESX, ox_core, and standalone scripts
- **Easy Integration** - Simple exports and configuration

## Installation

1. Download and extract `n3x_uipack` to your resources folder
2. Ensure ox_lib is installed and running
3. Add to your `server.cfg`:

```cfg
ensure ox_lib
ensure n3x_uipack
```

4. Restart your server

## Configuration

All settings can be customized in `config.lua`:

### Theme Configuration
```lua
Config.Theme = {
    primaryColor = {r = 67, g = 234, b = 128}, -- Main accent color
    accentColor = {r = 59, g = 130, b = 246},  -- Secondary accent
    backgroundColor = {r = 17, g = 24, b = 39}, -- Dark background
    -- ... more color options
}
```

### Component Settings
Each component has its own configuration section:
- **Notifications** - Position, duration, animations, max count
- **Progress** - Type (bar/circle), position, cancel ability
- **Input Dialogs** - Position, validation, styling
- **Context Menus** - Position, search, icons, submenus
- **Skill Checks** - Difficulty presets, types, visual settings
- **Text UI** - Position, styles, icons
- **Alert Dialogs** - Position, buttons, timer
- **NPC Dialogs** - Avatar, typewriter effect, choices
- **Radial Menus** - Style (honeycomb/circular/grid), size

## Usage

### Notifications

```lua
-- Using exports
exports['n3x_uipack']:Notify({
    title = 'Success',
    description = 'Action completed successfully!',
    type = 'success', -- success, error, warning, info
    duration = 5000,
    icon = 'fa-check-circle',
    position = 'top-right'
})

-- Or if ox_lib override is enabled, use lib directly
lib.notify({
    title = 'Information',
    description = 'This works too!',
    type = 'info'
})
```

### Progress Bar/Circle

```lua
-- Progress Bar
local success = exports['n3x_uipack']:Progress({
    label = 'Processing...',
    duration = 5000,
    type = 'bar', -- or 'circle'
    canCancel = true,
    animation = {
        dict = 'amb@world_human_hammering@male@base',
        clip = 'base',
        flag = 49
    },
    prop = {
        model = 'prop_tool_hammer',
        bone = 60309,
        pos = vec3(0.0, 0.0, 0.0),
        rot = vec3(0.0, 0.0, 0.0)
    }
})

if success then
    print('Progress completed!')
else
    print('Progress cancelled!')
end
```

### Input Dialog

```lua
local input = exports['n3x_uipack']:InputDialog('User Information', {
    {
        type = 'input',
        label = 'Name',
        description = 'Enter your character name',
        required = true,
        placeholder = 'John Doe'
    },
    {
        type = 'number',
        label = 'Age',
        description = 'Enter your age',
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
        label = 'Description',
        placeholder = 'Enter a description...'
    },
    {
        type = 'checkbox',
        label = 'Accept Terms',
        checked = false
    }
})

if input then
    print('Name:', input['input-0'])
    print('Age:', input['input-1'])
    print('Gender:', input['input-2'])
end
```

### Context Menu

```lua
exports['n3x_uipack']:ShowContext('example_menu', 'Main Menu', {
    {
        title = 'Option 1',
        description = 'This is the first option',
        icon = 'fa-home',
        onSelect = function()
            print('Option 1 selected')
        end
    },
    {
        title = 'Option 2',
        description = 'This is the second option',
        icon = 'fa-user',
        disabled = false,
        arrow = true
    },
    {
        title = 'Disabled Option',
        description = 'This option is disabled',
        icon = 'fa-ban',
        disabled = true
    }
})

-- To close the menu
exports['n3x_uipack']:HideContext()
```

### Skill Check

```lua
-- Using difficulty preset
local success = exports['n3x_uipack']:SkillCheck('hard')

-- Using custom settings
local success = exports['n3x_uipack']:SkillCheck({
    speed = 2.0,
    areaSize = 15,
    keys = 3
})

if success then
    print('Skill check passed!')
else
    print('Skill check failed!')
end
```

### Text UI

```lua
-- Show text UI
exports['n3x_uipack']:ShowTextUI({
    text = 'Press [E] to interact',
    icon = 'fa-hand-pointer',
    position = 'right'
})

-- Simple string version
exports['n3x_uipack']:ShowTextUI('Press [E] to interact')

-- Hide text UI
exports['n3x_uipack']:HideTextUI()
```

### Alert Dialog

```lua
local result = exports['n3x_uipack']:AlertDialog({
    header = 'Confirmation',
    content = 'Are you sure you want to continue?',
    centered = true,
    cancel = true,
    buttons = {
        {label = 'Yes', value = 'yes'},
        {label = 'No', value = 'no'}
    }
})

if result == 'yes' then
    print('User confirmed')
end
```

### NPC Dialog

```lua
-- Without choices (auto-hide)
exports['n3x_uipack']:NPCDialog({
    name = 'Shop Keeper',
    avatar = 'https://example.com/avatar.png',
    message = 'Welcome to my shop!',
    duration = 5000
})

-- With choices
local choice = exports['n3x_uipack']:NPCDialog({
    name = 'Quest Giver',
    message = 'I have a quest for you. Will you help me?',
    choices = {
        {label = 'Accept Quest', value = 'accept'},
        {label = 'Decline', value = 'decline'},
        {label = 'Ask for more info', value = 'info'}
    }
})

if choice == 'accept' then
    print('Quest accepted!')
end
```

### Radial Menu

```lua
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
        icon = 'fa-box'
    },
    {
        label = 'Phone',
        value = 'phone',
        icon = 'fa-mobile'
    },
    -- Add up to 8 items
})

-- To close
exports['n3x_uipack']:HideRadial()
```

## Advanced Configuration

### Overriding ox_lib

By default, n3x_uipack overrides ox_lib UI functions. To disable:

```lua
Config.Advanced = {
    overrideOxLib = false, -- Set to false to disable override
    fallbackToOxLib = true, -- Fallback if n3x_uipack fails
    debugMode = false, -- Enable console logging
    performanceMode = false, -- Reduce animations
    cacheEnabled = true -- Cache UI elements
}
```

### Animation Settings

```lua
Config.Notification = {
    animation = {
        enter = 'slideInRight', -- slideInRight, slideInLeft, fadeIn, bounceIn
        exit = 'slideOutRight', -- slideOutRight, slideOutLeft, fadeOut, bounceOut
        duration = 300 -- ms
    }
}
```

### Skill Check Difficulty Presets

```lua
Config.SkillCheck = {
    difficulty = {
        easy = { speed = 1, areaSize = 20, keys = 1 },
        medium = { speed = 1.5, areaSize = 15, keys = 2 },
        hard = { speed = 2, areaSize = 10, keys = 3 },
        extreme = { speed = 2.5, areaSize = 7, keys = 4 }
    }
}
```

## Compatibility

### Using with existing ox_lib scripts

If `Config.Advanced.overrideOxLib` is set to `true`, all scripts using ox_lib UI functions will automatically use n3x_uipack styling without any code changes!

```lua
-- This existing code in any script
lib.notify({
    type = 'success',
    description = 'Test notification'
})
-- Will automatically use n3x_uipack styling!
```

### Export Functions

All functions are available via exports:

```lua
-- Notifications
exports['n3x_uipack']:Notify(data)
exports['n3x_uipack']:notify(data)

-- Progress
exports['n3x_uipack']:Progress(data)
exports['n3x_uipack']:progressBar(data)
exports['n3x_uipack']:progressCircle(data)

-- Input
exports['n3x_uipack']:InputDialog(heading, rows)
exports['n3x_uipack']:inputDialog(heading, rows)

-- Context
exports['n3x_uipack']:ShowContext(id, title, options)
exports['n3x_uipack']:HideContext()

-- Skill Check
exports['n3x_uipack']:SkillCheck(difficulty, keys)
exports['n3x_uipack']:skillCheck(difficulty, keys)

-- Text UI
exports['n3x_uipack']:ShowTextUI(data)
exports['n3x_uipack']:HideTextUI()

-- Alert
exports['n3x_uipack']:AlertDialog(data)

-- NPC Dialog
exports['n3x_uipack']:NPCDialog(data)
exports['n3x_uipack']:HideNPCDialog()

-- Radial Menu
exports['n3x_uipack']:RadialMenu(items)
exports['n3x_uipack']:HideRadial()
```

## Troubleshooting

### UI not showing
- Ensure ox_lib is installed and running
- Check browser console (F8) for errors
- Enable `Config.Advanced.debugMode = true`

### Conflicts with other UI scripts
- Set `Config.Advanced.overrideOxLib = false`
- Use exports directly instead of lib functions

### Performance issues
- Enable `Config.Advanced.performanceMode = true`
- Reduce `Config.Notification.maxNotifications`
- Disable `Config.General.enableBlur`

## Credits

- Inspired by **prism_uipack** and **wasabi_uikit**
- Built for the FiveM community
- Developed by **N3X Development**

## Support

For issues, suggestions, or contributions, please open an issue on GitHub.

## License

This resource is licensed under the MIT License. You are free to use, modify, and distribute this resource with proper attribution.

---

**Enjoy using N3X UI Pack!** Make sure to customize the config to match your server's theme!
