function love.load()
  W=800
  H=600
  pos = W / 2
  row = 0
  col = W / 2
  pad_width = 50
  score = 0
  love.window.setMode(W,H)
end

function love.update()
    if love.keyboard.isDown('left') and pos > pad_width then
        pos = pos - 10
    end
    if love.keyboard.isDown('right') and pos < W-pad_width then
        pos = pos + 10
    end
    row = row + 5
    if row > H - 100 then
        if pos - pad_width <= col and col <= pos + pad_width then
            score = score + 1
        end
        col = math.random(20,W-20)
        row = 0
    end
end

function love.draw()
    love.graphics.print('Score: ' .. score,20,H-50)
    love.graphics.setColor(255,0,0)
    love.graphics.circle('fill',col,row,10)
    love.graphics.setColor(255,255,255)
    love.graphics.rectangle('fill',pos-pad_width,H-100,2*pad_width,30)
end
