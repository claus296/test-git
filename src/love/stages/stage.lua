return {
    enter = function()
        stageImages = {
		    graphics.newImage(love.graphics.newImage(graphics.imagePath("beast/beastBG")))
        }

        enemy = Character.beast(0,0)

        stageImages[1].sizeX, stageImages[1].sizeY = 0.7

        stageImages[1].x = 100

        enemy.x, enemy.y = -970, -800
        
		enemy.scale.x, enemy.scale.y = 0.8
    end,

    load = function()

    end,

    update = function(self, dt)

    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

            stageImages[1]:draw()

            enemy:draw()

		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

		love.graphics.pop()
    end,

    leave = function()

    end
}