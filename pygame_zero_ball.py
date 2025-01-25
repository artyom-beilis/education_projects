import random
WIDTH=800
HEIGHT=600

pos = 400
row = 0
col = 400
score = 0

def update(dt):
    global pos,row,col,score
    if keyboard.q and pos > 5:
        pos -= 10
    if keyboard.p and pos < WIDTH - 5:
        pos += 10
    row += 5
    if row > HEIGHT - 100:
        if pos - 10 <= col <= pos + 10:
            score += 1
        col = random.randint(20,WIDTH-20)
        row = 0

def draw():
    global pos,row,col,score
    screen.clear()
    screen.draw.filled_rect(Rect((pos-10,HEIGHT-100),(20,30)),(255,255,255))
    screen.draw.filled_circle((col,row),10,(255,255,0))
    screen.draw.text('Score %d' % score,(WIDTH//2-20,HEIGHT-50))

