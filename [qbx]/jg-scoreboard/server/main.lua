Framework.Server.CreateCallback('framework:getScoreboardData', function(source, cb)
    local players = Framework.Server.GetPlayers()
    local maxSlots = GetConvar('sv_maxclients', '2048')
    local configA = Config

    local jobCounts = {}
    for _, job in pairs(configA.HighlightedJobs) do
        jobCounts[job.label] = 0
    end

    local validPlayers = {}

    for _, player in pairs(players) do
        local jobName = player.jobName
        local jobConfig = nil

        for _, job in pairs(configA.HighlightedJobs) do
            if table.contains(job.jobs, jobName) then
                jobConfig = job
                break
            end
        end

        if jobConfig then
            jobCounts[jobConfig.label] = jobCounts[jobConfig.label] + 1
        end
        player.ping = GetPlayerPing(player.id)

        player.me = (player.id == source)

        table.insert(validPlayers, player)
    end

    for _, job in pairs(configA.HighlightedJobs) do
        job.count = jobCounts[job.label] or 0
    end

    local data = {
        config = configA,
        maxSlots = maxSlots,
        players = validPlayers
    }
    
    cb(data)
end)

function table.contains(table, element)
    for _, value in ipairs(table) do
        if value == element then
            return true
        end
    end
    return false
end
