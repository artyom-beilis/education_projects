W=640
H=360
pos=W/2
col=W/2
row=0
score=0

function setup() {
  createCanvas(W,H)
  background(127)
}


function draw() {
    row+=3;
    if(keyIsPressed){
        if(key == 'q' && pos > 5) {
            pos-=5;
        }
        if(key == 'p' && pos < W-5) {
            pos+=5;
        }
    }
    if(row >= H-60) {
        if(pos - 10<= col && col <= pos+10) {
            score+=1;
        }
        row = 0;
        col = Math.floor(Math.random()*(W-200) + 100);
    }
    background(127)
    rect(pos-10,H-60,20,30)
    circle(col,row,10)
    text(`Score ${score}`,10,H-10)
}
