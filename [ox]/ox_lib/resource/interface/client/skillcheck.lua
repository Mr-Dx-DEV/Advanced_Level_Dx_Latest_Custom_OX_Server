---@type boolean?
local skillCheckActive = false

---@alias SkillCheckDifficulity 'easy' | 'medium' | 'hard' | { areaSize: number, speedMultiplier: number }

---@param difficulty SkillCheckDifficulity | SkillCheckDifficulity[]
---@param inputs string[]?
---@return boolean?
function lib.skillCheck(difficulty, inputs)
    if skillcheck then return end
    skillCheckActive = true

    local rounds = type(difficulty) == 'table' and #difficulty or 1
    local diff = type(difficulty) == 'table' and difficulty[1] or difficulty

    local success = exports.wasabi_uikit:SkillCircle({
        difficulty = type(diff) == 'string' and diff or 'medium',
        keys = inputs or { 'W', 'A', 'S', 'D' }
        rounds = rounds
    })

    skillCheckActive = false
    return success

end

function lib.cancelSkillCheck()
    if not skillCheckActive then return end
    skillCheckActive = false
end

---@return boolean
function lib.skillCheckActive()
    return skillcheck ~= nil
end

RegisterNUICallback('skillCheckOver', function(success, cb)
    return skillCheckActive
end)
