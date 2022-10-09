function onCreate()
	-- background shit
	makeLuaSprite('thefrickinbg', 'SonicP2/Youcantrunbg', -285, -55); --imagine being lazy lol

	scaleObject('thefrickinbg', 1.95, 1.95);
	setProperty('thefrickinbg.antialiasing', true);
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');
	setProperty("skipCountdown", true);
	
	makeLuaSprite('BlackFlash', 'dablack', -700, 0);
	scaleObject('BlackFlash', 18, 22);
	setProperty('BlackFlash.visible', true);
	
	addLuaSprite('thefrickinbg', false);
	addLuaSprite('BlackFlash', true);
end

function onUpdate(elapsed)
    setProperty('timeBarBG.visible', false);
    setProperty('timeBar.visible', false);
    setProperty('timeTxt.visible', false);
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then
		if value1 == 'show' then
        setProperty('scoreTxt.visible', true)
        setProperty('healthBar.visible', true)
        setProperty('healthBarBG.visible', true)
        setProperty('iconP1.visible', true)
        setProperty('iconP2.visible', true)
        setProperty('timeTxt.visible', true)
        setProperty('timeBar.visible', true)
        setProperty('timeBarBG.visible', true)
        setPropertyFromGroup('opponentStrums', 0, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 1, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 2, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 3, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 0, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 1)
		end
		
		if value1 == 'hide' then
        setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false) -- if you r reading this, you r gae lol
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
        setProperty('timeTxt.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeBarBG.visible', false)
        setPropertyFromGroup('opponentStrums', 0, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 1, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 3, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 0, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 0)
		end
	end
end

function onStepHit()
	if curStep == 528 then
		setProperty('defaultCamZoom',1)
		triggerEvent('Change Character', 'bf', 'bf-pixel-sonic');

		triggerEvent('Change Character', 'dad', 'PixelExe');

		setCharacterX('boyfriend', 1150);

		setCharacterY('boyfriend', -160);

		setCharacterX('dad', 150);

		setCharacterY('dad', -130);

		setProperty('thefrickinbg.visible', false);

		setProperty('thefrickinbg2.antialiasing', true);

		makeLuaSprite('thefrickinbg2', 'SonicP2/greenhillsbiggggg', -572, -426);

		addLuaSprite('thefrickinbg2', false);
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'PIXEL_NOTE_assets');
	
	end
	if curStep == 784 then
		setProperty('defaultCamZoom',0.8)
		triggerEvent('Change Character', 'bf', 'bf-encore');

		triggerEvent('Change Character', 'dad', 'ycr');

		setCharacterX('boyfriend', 830);

		setCharacterY('boyfriend', 100);

		setCharacterX('dad', 30);

		setCharacterY('dad', 110);
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'NOTE_assets');

		setProperty('thefrickinbg2.visible', false);

		setProperty('thefrickinbg.visible', true);
    end
	if curStep == 1269 then
	triggerEvent('Change Character', 'dad', 'ycr-mad');
	end
end