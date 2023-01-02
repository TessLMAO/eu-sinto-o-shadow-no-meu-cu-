function onCreate()
	makeLuaSprite('bar1', 'bar', 0, 720);
	setObjectCamera('bar1','hud')
	setProperty('bar1.antialiasing', false);
	addLuaSprite('bar1', false);

	makeLuaSprite('bar2', 'bar', 0, -720);
	setObjectCamera('bar2','hud')
	setProperty('bar2.antialiasing', false);
	addLuaSprite('bar2', false);


	--loads first but isnt visible yet
	makeLuaSprite('sky1', 'westopiadark/sky', -1115, -659.999999999999);
	setLuaSpriteScrollFactor('sky', 0.65, 0.15);
	scaleObject('sky1', 1, 1);
	setProperty('sky1.antialiasing', true);
	addLuaSprite('sky1', false);

	makeLuaSprite('back buildings1', 'westopiadark/back buildings', -1050, -889.999999999999);
	setLuaSpriteScrollFactor('back buildings1', 0.75, 0.75);
	scaleObject('back buildings1', 1, 1);
	setProperty('back buildings1.antialiasing', true);
	addLuaSprite('back buildings1', false);

	makeLuaSprite('middle buildings1', 'westopiadark/middle buildings', -1075, -879.999999999999);
	setLuaSpriteScrollFactor('middle buildings1', 0.85, 0.85);
	scaleObject('middle buildings1', 1, 1);
	setProperty('middle buildings1.antialiasing', true);
	addLuaSprite('middle buildings1', false);

	makeLuaSprite('front buildings1', 'westopiadark/front buildings', -1120, -1035);
	setLuaSpriteScrollFactor('front buildings1', 0.9, 0.9);
	scaleObject('front buildings1', 1, 1);
	setProperty('front buildings1.antialiasing', false);
	addLuaSprite('front buildings1', false);

	makeLuaSprite('ground1', 'westopiadark/ground', -1100, 164.999999999998);
	setLuaSpriteScrollFactor('ground1', 1, 1);
	scaleObject('ground1', 1, 1);
	setProperty('ground1.antialiasing', false);
	addLuaSprite('ground1', false);

----------------------------------------------------------------------------------

	makeLuaSprite('sky', 'westopia/sky', -1115, -659.999999999999);
	setLuaSpriteScrollFactor('sky', 0.65, 0.15);
	scaleObject('sky', 1, 1);
	setProperty('sky.antialiasing', true);
	addLuaSprite('sky', false);

	makeLuaSprite('back buildings', 'westopia/back buildings', -1050, -889.999999999999);
	setLuaSpriteScrollFactor('back buildings', 0.75, 0.75);
	scaleObject('back buildings', 1, 1);
	setProperty('back buildings.antialiasing', true);
	addLuaSprite('back buildings', false);

	makeLuaSprite('middle buildings', 'westopia/middle buildings', -1075, -879.999999999999);
	setLuaSpriteScrollFactor('middle buildings', 0.85, 0.85);
	scaleObject('middle buildings', 1, 1);
	setProperty('middle buildings.antialiasing', true);
	addLuaSprite('middle buildings', false);

	makeLuaSprite('front buildings', 'westopia/front buildings', -1120, -1035);
	setLuaSpriteScrollFactor('front buildings', 0.9, 0.9);
	scaleObject('front buildings', 1, 1);
	setProperty('front buildings.antialiasing', false);
	addLuaSprite('front buildings', false);

	makeLuaSprite('ground', 'westopia/ground', -1100, -854.999999999998);
	setLuaSpriteScrollFactor('ground', 1, 1);
	scaleObject('ground', 1, 1);
	setProperty('ground.antialiasing', false);
	addLuaSprite('ground', false);

end

-----------------------------------------------------------------------------

function onStepHit()
	if dadName == 'ShadowChaos' then 
		if curStep % 30 == 0 then 
       	doTweenY('rtr', 'dad', '-425','1.2','sineInOut')
       end

       if curStep % 30 == 15 then 
        doTweenY('rtr', 'dad','-625','1.2','sineInOut')
       end 
      
   end

end
--glow follow
function onUpdate()
	setProperty('glow.x', getProperty('dad.x')-560)
	setProperty('glow.y', getProperty('dad.y')-430)


end
------------------------------------------------------------------------

function onBeatHit()
	--transformation--
	if curBeat == 231 then
		cameraFlash('hud', 'ffffff', 1.2, false)

		removeLuaSprite('sky', true)
		removeLuaSprite('back buildings', true)
		removeLuaSprite('middle buildings', true)
		removeLuaSprite('front buildings', true)
		removeLuaSprite('ground', true)

		setCharacterY('dad', -525.0)

		makeAnimatedLuaSprite('glow', 'chaos glow', 4000, -4000);
		setBlendMode('glow', 'add')
		setProperty('glow.alpha', 70);
		setLuaSpriteScrollFactor('glow', 1, 1);
		scaleObject('glow', 1, 1);
		setProperty('glow.antialiasing', true);
		addAnimationByPrefix('glow', 'chaos glow', 'glow', 24, true);
		addLuaSprite('glow', false);
	end
	--------------------------------------------------------------------
	--bars--
	if curBeat == 7 then
		doTweenY('barr1','bar1','620','0.6','sineOut')
		doTweenY('barr2','bar2','-620','0.6','sineOut')
	end
	if curBeat == 40 then
		doTweenY('barr1','bar1','645','1','sineOut')
		doTweenY('barr2','bar2','-645','1','sineOut')
	end
	if curBeat == 104 then
		doTweenY('barr1','bar1','610','0.6','sineOut')
		doTweenY('barr2','bar2','-610','0.6','sineOut')
	end
	if curBeat == 121 then
		doTweenY('barr1','bar1','620','0.6','sineOut')
		doTweenY('barr2','bar2','-620','1','sineOut')
	end
	if curBeat == 168 then
		doTweenY('barr1','bar1','645','1','sineOut')
		doTweenY('barr2','bar2','-645','1','sineOut')
	end
	if curBeat == 200 then
		doTweenY('barr1','bar1','675','2','sineOut')
		doTweenY('barr2','bar2','-675','2','sineOut')
	end
	if curBeat == 228 then
		doTweenY('barr1','bar1','600','0.6','sineOut')
		doTweenY('barr2','bar2','-600','0.6','sineOut')
	end
	if curBeat == 232 then
		doTweenY('barr1','bar1','635','0.1','sineOut')
		doTweenY('barr2','bar2','-635','0.1','sineOut')
	end
	if curBeat == 328 then
		doTweenY('barr1','bar1','0','2','sineOut')
		doTweenY('barr2','bar2','0','2','sineOut')
	end
end