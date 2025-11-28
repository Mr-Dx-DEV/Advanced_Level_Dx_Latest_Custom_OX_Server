# N3X Admin Menu (QB-Core)

A professional and modern admin menu for FiveM servers running **QB-Core**, inspired by Snipe-Menu with a sleek teal/cyan design.

## Features

- **Modern UI** - Beautiful teal/cyan themed interface
- **Easy to Use** - Intuitive command navigation with search functionality
- **Categories** - Organized commands into Player, Utility, and custom categories
- **Favorites System** - Mark frequently used commands as favorites
- **25+ Commands** - Comprehensive set of admin commands including:
  - Announce
  - Change Plate
  - Clothes Menu
  - Copy Coordinates
  - Create Job Stashes
  - Fix Vehicle
  - Freeze Player
  - Give Car/Item/Job/Money/Weapon/Armor
  - God Mode
  - Invisible
  - Kick/Ban
  - NoClip
  - Teleport (Coords/Player/Waypoint)
  - Revive/Heal
  - Spectate
  - Bring/Goto Player
  - Clear Inventory

## Installation

1. **Download** the `n3x-adminmenu` resource
2. **Place** it in your server's resources folder
3. **Add** to your `server.cfg`:
   ```
   ensure n3x-adminmenu
   ```
4. **Ensure** dependencies are installed:
   - `qb-core`
   - `oxmysql`

## Configuration

Edit `config/config.lua` to customize:

```lua
Config.Command = 'adminmenu'        -- Command to open menu
Config.AdminGroups = {              -- Admin permissions (QB-Core)
    'god',
    'admin'
}
Config.UseAce = false               -- Use ACE permissions instead
Config.AcePermission = 'n3x.admin'  -- ACE permission name
Config.ReviveEvent = 'hospital:client:Revive' -- Revive event
```

## Permissions

### QB-Core Permissions
Set player permission in database:

```sql
UPDATE players SET permission = 'admin' WHERE citizenid = 'YOUR_CITIZENID';
```

Or use in-game command:
```
/setpermission [id] admin
```

Available permission levels:
- `god` - Full access
- `admin` - Admin access
- `mod` - Moderator access (if added to Config)

### ACE Permissions (Optional)
In `server.cfg`:
```
add_ace group.admin n3x.admin allow
add_principal identifier.IDENTIFIER group.admin
```

## Usage

1. **Open Menu**: Type `/adminmenu` in chat or press F10 (if keybind enabled)
2. **Navigate**: Click on commands in the sidebar
3. **Execute**: Fill in required fields and click Execute
4. **Favorites**: Click the star icon to add to favorites
5. **Search**: Type in the search bar to filter commands
6. **Close**: Press ESC or click outside the menu

## Command List

### Player Commands
- **Freeze Player** - Freeze/unfreeze a player
- **Give Car** - Spawn a vehicle for a player (includes vehicle keys)
- **Give Item** - Give items to a player
- **Give Job** - Set a player's job
- **Give Money** - Give money to a player (cash/bank)
- **Give Weapon** - Give weapons to a player
- **Give Armor** - Give armor to a player
- **God Mode** - Toggle invincibility
- **Invisible** - Toggle invisibility
- **Kick** - Kick a player from the server
- **Ban** - Ban a player from the server
- **Revive** - Revive a player
- **Heal** - Heal yourself or a player
- **Spectate** - Spectate a player
- **Bring Player** - Teleport a player to you
- **Go To Player** - Teleport to a player
- **Clear Inventory** - Clear a player's inventory
- **Clothes Menu** - Open QB clothing menu

### Utility Commands
- **Announce** - Send server-wide announcement
- **Copy Coordinates** - Copy your current coordinates
- **Create Job Stashes** - Create job stashes
- **Fix Vehicle** - Repair your current vehicle
- **NoClip** - Toggle noclip mode (WASD + Q/E + Shift)
- **Teleport** - Teleport to coords/player/waypoint
- **Change Plate** - Change vehicle license plate

## Database

The ban system uses QB-Core's built-in bans table. No additional setup required!

## QB-Core Integration

This admin menu is fully integrated with QB-Core:
- Uses `QBCore.Functions.Notify` for notifications
- Uses `QBCore.Functions.SpawnVehicle` for vehicle spawning
- Integrates with `qb-clothing` for clothes menu
- Uses `QBCore.Functions.GetPermission` for permissions
- Compatible with `qb-inventory` or `ox_inventory`
- Works with `qb-ambulancejob` or default hospital script

## Customization

### Changing Colors
Edit `html/style.css` and modify the CSS variables:

```css
.menu-sidebar {
    background: linear-gradient(180deg, #0891b2 0%, #155e75 100%);
}
```

### Changing Revive Event
Edit `config/config.lua`:
```lua
Config.ReviveEvent = 'qb-ambulancejob:client:Revive'
-- or
Config.ReviveEvent = 'hospital:client:Revive'
```

### Adding Commands
1. Add command to `html/script.js` in the `commands` array
2. Add command handler in `client/client.lua`
3. Add server event in `server/server.lua` (if needed)

## Troubleshooting

### Menu won't open
- Check console for errors
- Verify you have admin permissions
- Ensure `qb-core` is running
- Check server.cfg has `ensure n3x-adminmenu`

### Commands not working
- Check server console for errors
- Verify QB-Core is running
- Check oxmysql connection
- Ensure player IDs are correct

### Vehicle keys not working
- Ensure you have a vehicle keys script
- Default: Uses `vehiclekeys:client:SetOwner` event
- Modify `client/client.lua` line 327 if using different script

### Items not showing
- Verify items exist in `qb-core/shared/items.lua`
- Check spelling of item names
- Ensure inventory script is running

## Support

For issues or suggestions, please create an issue on GitHub or contact the developer.

## Credits

- **Inspired by**: Snipe-Menu
- **Developed by**: N3X Development
- **Framework**: QB-Core
- **Version**: 1.0.0

## License

This resource is free to use and modify for personal use. Please give credit if redistributing.

---

**Enjoy your new QB-Core admin menu!** 🎮
