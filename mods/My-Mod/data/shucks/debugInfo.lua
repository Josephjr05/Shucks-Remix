local showDebugInfo = true

function onCreate()
    if showDebugInfo then
        makeLuaText('debugInfo', '', 0, 600, 200)
        addLuaText('debugInfo')
    end
end

function onUpdatePost()
    local camPosX = getProperty("camFollow.x")
    local camPosY = getProperty("camFollow.y")

    makeLuaText("camPosX", camPosX, 500, 10, 10)
makeLuaText("camPosY", camPosY, 500, 50, 10)

addLuaText("camPosX")
addLuaText("camPosY")

end