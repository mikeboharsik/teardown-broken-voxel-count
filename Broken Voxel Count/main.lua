function init()
	saveBrokenVoxels = GetInt("savegame.stats.brokenvoxels")
end

function tick()
	brokenVoxels = GetInt("game.brokenvoxels")
end

function draw()
	UiFont("bold.ttf", 24)
	
	UiTranslate(100, 100)
	UiText("Broken Voxel Count")
	
	UiFont("regular.ttf", 20)
	UiTranslate(0, 20)
	
	local totalBrokenVoxels = saveBrokenVoxels + brokenVoxels
	
	local statusWidth
	statusWidth = UiText(tostring(totalBrokenVoxels))
	
	UiTranslate(statusWidth, -15)
end
