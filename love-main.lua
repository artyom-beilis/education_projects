W=800
H=600
love.window.setMode(W,H)
pos = 400
row = 0
col = 400
score = 0

function love.draw()
    if love.keyboard.isDown('q') and pos > 5 then
        pos = pos - 10
    end
    if love.keyboard.isDown('p') and pos < W-5 then
        pos = pos + 10
    end
    row = row + 5
    if row > H - 100 then
        if pos - 10 <= col and col <= pos + 10 then
            score = score + 1
        end
        col = math.random(20,W-20)
        row = 0
    end
    love.graphics.print(string.format('Score: %d',score),W/2-20,H-50)
    love.graphics.circle('fill',col,row,10)
    love.graphics.rectangle('fill',pos-10,H-100,20,30)
end
