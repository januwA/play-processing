void setup() {
  size(600, 400);
  background(0);
}

void draw() {
  stroke(255, 0, 0);
  strokeWeight(3);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed(){
  // mouse event
  background(0);
}

void keyPressed(){
  // key event
  background(0, 0, 255);
}
