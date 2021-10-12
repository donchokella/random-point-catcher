
function love.load()
--[[
    a function to load the love
    which is to initialize the screen
--]]
    window_width = 800
    window_height = 600

    gameFont = love.graphics.newFont(40)

    love.window.setMode(window_width, window_height, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })

    target = {}
    target.x = window_width/2
    target.y = window_height/2
    target.radius = 30

    score = 0
    timer = 0
end


function love.update(dt)

end


function love.draw()
    love.graphics.setColor(0.9, 0.5, 0)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    love.graphics.setColor(1,1,1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0, 0)
end


function love.mousepressed( x, y, button, istouch, presses )
--[[
    a function to recognize the mouse actions
--]]
    if button == 1 then
        local mouseToTarget = distanceBetween(x, y, target.x, target.y)
        if mouseToTarget < target.radius then
            score = score + 1
            target.x = math.random(target.radius, window_width - target.radius)
            target.y = math.random(target.radius, window_height - target.radius)
        end
    end
end


function distanceBetween(x1, y1, x2, y2)
--[[
    a function to calculate distance between point to point
--]]
    return math.sqrt( (x2-x1)^2 + (y2-y1)^2 )
end


