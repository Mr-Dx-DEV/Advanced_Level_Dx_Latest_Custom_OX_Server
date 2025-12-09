-- Client-side progressbar bridge for ox_lib

-- Show progressbar
bridge.progressbar.show = function(data, onComplete)
    local progressData = {
        duration = data.duration or 5000,
        label = data.title or data.label or 'Processing...',
        useWhileDead = data.useWhileDead or false,
        canCancel = data.canCancel or false,
        disable = data.disable or {
            move = false,
            car = false,
            combat = false
        },
        anim = data.animation and {
            dict = data.animation.dict,
            clip = data.animation.anim or data.animation.clip,
            flag = data.animation.flag or 49
        } or nil
    }

    if lib.progressBar(progressData) then
        if onComplete then
            onComplete()
        end
    end
end
