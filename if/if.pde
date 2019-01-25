float x = 0;
float xSpeed = 10;

void setup() {
  size(600, 400);
}

void draw() {
  background(0);
  
  fill(255, 0, 0);
  ellipse(x, 200, 20, 20);
 
  x = x + xSpeed;
 
  if(x > width || x < 0) {
    xSpeed = xSpeed * -1;
  }
}
