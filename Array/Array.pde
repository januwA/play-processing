Bubble[] bubbles = new Bubble[100];

ArrayList<Bubble> bubbles2 = new ArrayList();

void setup() {
  size(600, 400, P2D);
  
  for(int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(0, width), random(0, height), random(10, 20));
  }
  
  for(int i = 0; i < 10; i++) {
    bubbles2.add(new Bubble(random(0, width), random(0, height), random(10, 20)));
  }
}

void draw() {
  background(0);
  
  //for(int i = 0; i < bubbles.length; i++) {
  //  bubbles[i].show();
  //}
  
  for( Bubble b: bubbles ) {
     b.show();
     b.update();
   }
   
  for( Bubble b: bubbles2 ) {
     b.show();
   }
}


class Bubble {
  float x, y, r;
  
  Bubble(float cX, float cY, float cR) {
    x = cX;
    y = cY;
    r = cR;
  }
  
  void show() {
    noStroke();
    fill(100, 200, 0, 100);
    ellipse(x, y, r * 2, r * 2);
  }
  
  void update() {
    x += random(-5, 5);
    y += random(-5, 5);
  }
}
