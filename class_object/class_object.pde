Particle p1;
Particle p2;

void setup() {
  size(600, 400);
  
  p1 = new Particle(300, 200, 50);
  p2 = new Particle();
}

void draw() {
  background(0);
  
  if(p1.overlaps(p2)){
    background(0, 255, 0);
  }
  
  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.show();
  p2.show();
}


class Particle {
  float x, y;
  float r;
  
  Particle() {
   x = random(width);
   y = random(height);
   r = random(20, 25);
  }
  
  Particle(float xx, float yy, float rr) {
    x = xx;
    y = yy;
    r = rr;
  }
  
  void show() {
   noFill();
   stroke(255);
   ellipse(x, y, r*2, r*2);
  }
  
  boolean overlaps(Particle p) {
    float d = dist(x, y, p.x, p.y);
    if(d < r + p.r) {
      return true;
    }else {
      return false;
    }
  }
}
