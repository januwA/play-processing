int x =0;

void setup() {
  size(600, 400);
}

void draw() {
  background(0);
  
  fill(255);
  ellipse(x, 200, 20, 20);
  x += 1;
  if(x >= width) {
   x = 0;
  }
  println(x);
}
