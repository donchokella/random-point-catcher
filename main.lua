function love.load()
    '''
    a function to load the love
    '''
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


