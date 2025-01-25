int pos=0;
int col=0;
int row=0;
int score=0;

void setup() {
  size(800,600);
  col=width / 2;
  pos=width / 2;
  background(0);
}


void draw() {
    row+=3;
    if(keyPressed){
        if(key == 'q' && pos > 5) {
            pos-=5;
        }
        if(key == 'p' && pos < width-5) {
            pos+=5;
        }
    }
    if(row >= height-60) {
        if(pos - 10<= col && col <= pos+10) {
            score+=1;
        }
        row = 0;
        col = (int)random(width-200)+100;
    }
    background(0);
    rect(pos-10,height-60,20,30);
    circle(col,row,10);
    text("Score " + score,10,height-10);
}
