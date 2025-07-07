function onCreatePost()
      precacheImage('ready', 'ready')
      precacheImage('set', 'set')
      precacheImage('go', 'go')
end

function onCreate()
      setScrollFactor('gfGroup', 1, 1)

      makeLuaSprite('prepare', 'prepare', 0, 0)
      screenCenter('prepare', true)
      setProperty('prepare.alpha', 0)
      scaleObject('prepare', 1, 1)
      setObjectCamera('prepare', 'camHUD')

      makeLuaSprite('ready', 'ready', 0, 0)
      screenCenter('ready', true)
      setProperty('ready.alpha', 0)
      scaleObject('ready', 1, 1)
      setObjectCamera('ready', 'camHUD')

      makeLuaSprite('set', 'set', 0, 0)
      screenCenter('set', true)
      setProperty('set.alpha', 0)
      scaleObject('set', 1, 1)
      setObjectCamera('set', 'camHUD')

      makeLuaSprite('go', 'go', 0, 0)
      setProperty('go.alpha', 0)
      screenCenter('go', true)
      scaleObject('go', 1, 1)
      setObjectCamera('go', 'camHUD');

      addLuaSprite('prepare', false)
      addLuaSprite('ready', false)
      addLuaSprite('set', false)
      addLuaSprite('go', false)
end

function onStepHit()
      -- 3
      if curStep == 2496 then
            doTweenAlpha('Prepare', 'prepare', 1, 0.25, 'linear')
      end
      if curStep == 2500 then
            doTweenAlpha('Prepare', 'prepare', 0, 0.25, 'linear')
      end
      
      -- 2
      if curStep == 2504 then
            doTweenAlpha('Ready', 'ready', 1, 0.25, 'linear')
      end
      if curStep == 2508 then
            doTweenAlpha('Ready', 'ready', 0, 0.25, 'linear')
      end

      -- 1
      if curStep == 2512 then
            doTweenAlpha('Set', 'set', 1, 0.25, 'linear')
      end
      if curStep == 2516 then
            doTweenAlpha('Set', 'set', 0, 0.25, 'linear')
      end

      -- go
      if curStep == 2520 then
            doTweenAlpha('Go', 'go', 1, 0.25, 'linear')
      end
      if curStep == 2524 then
            doTweenAlpha('Go', 'go', 0, 0.5, 'linear')
      end
end
            