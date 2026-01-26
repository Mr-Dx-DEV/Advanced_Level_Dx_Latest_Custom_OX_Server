-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



if not lib.checkDependency('qbx_core', '1.18.0', true) then return end
local QBX = exports.qbx_core
local utils = require 'client.utils'
function utils.hasPlayerGotGroup(filter)
    return QBX:HasGroup(filter)
end
