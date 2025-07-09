local healthDestroy = true

function opponentNoteHit()
    if healthDestroy then    
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.008);
    end
end
end
  function onStepHit()
       if curStep == 1984 then
         healthDestroy = false
end
end
