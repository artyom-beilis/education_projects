import pgzrun
import random
WIDTH=800
HEIGHT=600

pos = WIDTH / 2
row = 0
col = WIDTH / 2
score = 0
pad_width = 50

def update(dt):
    global pos,row,col,score
    if keyboard.left and pos > pad_width:
        pos = pos - 10
    if keyboard.right and pos < WIDTH - pad_width:
        pos = pos + 10
    row = row + 5
    if row > HEIGHT - 100:
        if pos - pad_width <= col <= pos + pad_width:
            score += 1
        col = random.randint(20,WIDTH-20)
        row = 0

def draw():
    global pos,row,col,score
    screen.clear()
    screen.draw.filled_rect(Rect((pos-pad_width,HEIGHT-100),(pad_width*2,30)),'white')
    screen.draw.filled_circle((col,row),10,'red')
    screen.draw.text('Score %d' % score,(20,HEIGHT-50))

pgzrun.go()