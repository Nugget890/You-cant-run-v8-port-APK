function opponentNoteHit(id, direction, noteType, isSustainNote)  
	if curStep >= 138 and curStep < 510 then
    cameraShake('game', 0.01, 0.055)
	end
	if curStep >= 756 and curStep < 1451 then
    cameraShake('game', 0.01, 0.055)
	end
end

function onCreate()

	get = getRandomInt(1,1)

end



function onUpdate()

		if get == 1 then

			setTextString("botplayTxt", "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot.")


	end

end