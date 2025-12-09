-- Server-side inventory bridge for ox_inventory

-- Check if player has item
bridge.inventory.hasItem = function(source, itemName, amount)
    local count = exports.ox_inventory:Search(source, 'count', itemName)
    if amount then
        return count >= amount
    end
    return count > 0
end

-- Add item to player inventory
bridge.inventory.addItem = function(source, itemName, amount, metadata)
    return exports.ox_inventory:AddItem(source, itemName, amount, metadata or {})
end

-- Remove item from player inventory
bridge.inventory.removeItem = function(source, itemName, amount)
    return exports.ox_inventory:RemoveItem(source, itemName, amount)
end

-- Get item from player inventory
bridge.inventory.getItem = function(source, itemName)
    local item = exports.ox_inventory:GetItem(source, itemName, nil, true)
    if item then
        return {
            name = item.name,
            label = item.label,
            count = item.count,
            metadata = item.metadata
        }
    end
    return nil
end
