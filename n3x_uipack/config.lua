Config = {}

-- UI Theme Configuration
Config.Theme = {
    -- Primary Color (RGB values)
    primaryColor = {r = 67, g = 234, b = 128}, -- Green theme

    -- Accent Colors
    accentColor = {r = 59, g = 130, b = 246}, -- Blue

    -- Background Colors
    backgroundColor = {r = 17, g = 24, b = 39}, -- Dark background
    backgroundSecondary = {r = 31, g = 41, b = 55}, -- Lighter dark

    -- Text Colors
    textPrimary = {r = 255, g = 255, b = 255}, -- White
    textSecondary = {r = 156, g = 163, b = 175}, -- Gray

    -- Status Colors
    successColor = {r = 34, g = 197, b = 94}, -- Green
    errorColor = {r = 239, g = 68, b = 68}, -- Red
    warningColor = {r = 251, g = 191, b = 36}, -- Yellow
    infoColor = {r = 59, g = 130, b = 246}, -- Blue
}

-- Notification Configuration
Config.Notification = {
    position = 'top-right', -- Options: 'top-right', 'top-left', 'bottom-right', 'bottom-left', 'top-center', 'bottom-center'
    duration = 5000, -- Default duration in milliseconds
    showProgress = true, -- Show progress bar
    enableSound = true, -- Enable notification sound
    maxNotifications = 5, -- Maximum notifications displayed at once

    -- Animation settings
    animation = {
        enter = 'slideInRight', -- Options: 'slideInRight', 'slideInLeft', 'fadeIn', 'bounceIn'
        exit = 'slideOutRight', -- Options: 'slideOutRight', 'slideOutLeft', 'fadeOut', 'bounceOut'
        duration = 300 -- Animation duration in ms
    }
}

-- Progress Bar Configuration
Config.Progress = {
    position = 'bottom', -- Options: 'top', 'bottom', 'center'
    type = 'bar', -- Options: 'bar', 'circle'
    showPercentage = true,
    enableCancel = true, -- Allow canceling progress with ESC key

    -- Bar specific settings
    bar = {
        height = 8,
        width = 300,
        rounded = true
    },

    -- Circle specific settings
    circle = {
        size = 100,
        thickness = 8
    }
}

-- Input Dialog Configuration
Config.Input = {
    position = 'center', -- Options: 'center', 'top', 'bottom'
    maxWidth = 500,
    enableValidation = true,
    closeOnSubmit = true,
    closeOnCancel = true
}

-- Context Menu Configuration
Config.ContextMenu = {
    position = 'right', -- Options: 'right', 'left', 'center'
    maxWidth = 300,
    enableSearch = true,
    closeOnSelect = true,
    enableIcons = true,
    enableSubMenus = true
}

-- Skill Check Configuration
Config.SkillCheck = {
    type = 'circle', -- Options: 'circle', 'bar', 'keys'

    -- Difficulty presets
    difficulty = {
        easy = {
            speed = 1,
            areaSize = 20,
            keys = 1
        },
        medium = {
            speed = 1.5,
            areaSize = 15,
            keys = 2
        },
        hard = {
            speed = 2,
            areaSize = 10,
            keys = 3
        },
        extreme = {
            speed = 2.5,
            areaSize = 7,
            keys = 4
        }
    },

    -- Visual settings
    showTimer = true,
    showAttempts = true,
    vibrationOnFail = true
}

-- Text UI Configuration
Config.TextUI = {
    position = 'right', -- Options: 'right', 'left', 'top', 'bottom', 'center'
    style = 'modern', -- Options: 'modern', 'classic', 'minimal', 'compact', 'detailed'
    enableIcons = true,
    fontSize = 14,
    padding = 12
}

-- Alert Dialog Configuration
Config.Alert = {
    position = 'center',
    enableTimer = true,
    enableButtons = true,
    closeOnBackdropClick = false,
    maxWidth = 400
}

-- NPC Dialog Configuration
Config.NPCDialog = {
    position = 'bottom-center',
    showAvatar = true,
    enableTypewriter = true, -- Typewriter effect for text
    typewriterSpeed = 50, -- Characters per second
    enableChoices = true,
    maxWidth = 600
}

-- Radial Menu Configuration
Config.RadialMenu = {
    style = 'honeycomb', -- Options: 'honeycomb', 'circular', 'grid'
    size = 400,
    enableLabels = true,
    enableIcons = true,
    closeOnSelect = true,
    maxItems = 8
}

-- General UI Settings
Config.General = {
    enableBlur = true, -- Blur background when UI is open
    enableAnimations = true,
    animationSpeed = 300,
    borderRadius = 8, -- Border radius for UI elements
    boxShadow = true,
    enableSounds = true,
    soundVolume = 0.3
}

-- Advanced Settings
Config.Advanced = {
    overrideOxLib = true, -- Override ox_lib UI functions completely
    fallbackToOxLib = true, -- Fallback to ox_lib if n3x_uipack fails
    debugMode = false, -- Enable debug messages
    performanceMode = false, -- Reduce animations for better performance
    cacheEnabled = true -- Cache UI elements for better performance
}

-- Keybinds
Config.Keybinds = {
    closeUI = 'ESC',
    confirmAction = 'ENTER',
    cancelAction = 'BACKSPACE',
    navigateUp = 'UP',
    navigateDown = 'DOWN',
    navigateLeft = 'LEFT',
    navigateRight = 'RIGHT'
}
