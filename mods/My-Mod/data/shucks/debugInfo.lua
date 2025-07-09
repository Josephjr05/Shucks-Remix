local showDebugInfo = true

function onCreate()
    if showDebugInfo then
        makeLuaText('debugInfo', '', 0, 600, 200)
        addLuaText('debugInfo')
    end
end

function onUpdate()
    if showDebugInfo then
        screenCenter('debugInfo', 'x')
        setTextString('debugInfo', 'current Step: '.. curStep ..'\ncurrent Beat: '.. curBeat)
    end
end