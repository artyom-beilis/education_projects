import random
W=640
H=360
pos=W//2
col=W//2
row=0
score=0

def setup():
    global W, H 
    size(W,H)
    background(0)
    
def draw():
    global H,W,pos,col,row,score
    row+=3
    if keyPressed:
        if key == 'q' and pos > 5:
            pos-=5
        if key == 'p' and pos < W-5:
            pos+=5
    if row >= H-60:
        if pos - 10<= col <= pos+10:
            score+=1
        row = 0
        col = random.randint(100,W-100)
    background(0)
    rect(pos-10,H-60,20,30)
    circle(col,row,10)
    text("Score %d" % score,10,H-10)
