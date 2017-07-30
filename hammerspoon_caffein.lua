local caffeine = hs.menubar.new()

local obj = {}

local on_message = 'caffeinated'
local off_message = 'wait sleep'

local on_icon = "☕️🙄"
local off_icon = "😴"

function obj:init(mod, key)

    function setCaffeineDisplay(state)
        if state then
            hs.alert.show(on_message)
            caffeine:setTitle(on_icon)
        else
            hs.alert.show(off_message)
            caffeine:setTitle(off_icon)
        end
    end

    function caffeineClicked()
        setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
    end

    if caffeine then
        caffeine:setClickCallback(caffeineClicked)
        setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
    end

    hs.hotkey.bind(mod, key, caffeineClicked)
end

return obj
