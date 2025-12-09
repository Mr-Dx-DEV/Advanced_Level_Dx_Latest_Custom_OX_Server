# nn_restaurants Bridge Setup

This document explains the bridge implementation for nn_restaurants to work with QBX/QB-Core, ox_inventory, and ox_lib.

## What Was Changed

The script originally depended on two external resources:
1. **nn_bridge** - Framework/inventory/notification abstraction
2. **nn_lib** - Callback system

These dependencies have been replaced with local bridge files that integrate with:
- **QBX/QB-Core** (Framework)
- **ox_inventory** (Inventory system)
- **ox_lib** (Notifications, progressbars, and callbacks)

## Bridge Structure

```
bridge/
├── init.lua                          # Bridge initialization
├── client/
│   ├── framework.lua                 # Client framework functions
│   ├── inventory.lua                 # Client inventory functions
│   ├── notification.lua              # Client notifications (ox_lib)
│   └── progressbar.lua               # Client progressbars (ox_lib)
└── server/
    ├── framework.lua                 # Server framework functions (QB-Core)
    ├── inventory.lua                 # Server inventory functions (ox_inventory)
    └── notification.lua              # Server notifications (ox_lib)
```

## Modified Files

1. **fxmanifest.lua**
   - Removed `@nn_bridge/init.lua` dependency
   - Added local bridge files
   - Bridge is now self-contained

2. **lib/lib.lua**
   - Removed `nn_lib` dependency
   - Simplified to just define State tables

3. **server/main.lua**
   - Added local Lib object with callback registration

4. **client/lib_wrapper.lua** (NEW)
   - Client-side Lib callback wrapper
   - Uses ox_lib's callback.await system

## Configuration

Make sure your `shared/config.lua` has the correct settings:

```lua
Config.Framework = 'qb'           -- Using QB-Core/QBX
Config.Inventory = 'ox'           -- Using ox_inventory
```

## Dependencies

Ensure these resources are started BEFORE nn_restaurants in your server.cfg:

```cfg
ensure qb-core
ensure ox_lib
ensure ox_inventory
ensure oxmysql
ensure nn_restaurants
```

## Features Supported

✅ Framework Integration (QBX/QB-Core)
- Player data retrieval
- Money transactions
- Job management

✅ Inventory Integration (ox_inventory)
- Item checking
- Adding/removing items
- Metadata support

✅ UI Integration (ox_lib)
- Notifications
- Progress bars
- Callbacks

## Troubleshooting

### Issue: "attempt to call a nil value (field 'registerCallback')"
**Solution:** Make sure ox_lib is started before nn_restaurants

### Issue: "No such export GetCoreObject in resource qb-core"
**Solution:** Ensure qb-core or qbx_core is running and started before nn_restaurants

### Issue: Inventory items not working
**Solution:** Check that ox_inventory is properly configured and items are added to ox_inventory/data/items.lua

### Issue: Notifications not showing
**Solution:** Verify ox_lib is running and properly configured

## Support

This bridge was created to make nn_restaurants compatible with:
- QBX Framework
- QB-Core Framework
- ox_inventory
- ox_lib

If you encounter any issues, make sure all dependencies are properly installed and started in the correct order.
