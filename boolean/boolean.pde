float x = 10;
boolean isMove = false;

void setup() {
  size(600, 400);
}

void draw() {
  background(0);
  
  fill(250, 0, 0);
  ellipse(x, 200, 20, 20);
  
  if(isMove) {
    x += 10;
  }
  
  if(x >= width) {
    x = 0;
  }
}

void mousePressed() {
  isMove = !isMove;
}
