PImage img;
ArrayList<Ring> rings = new ArrayList();

void setup() {
  size(300, 168);
  img = loadImage("https://i.loli.net/2019/01/13/5c3ac84832d73.jpg");
}

void draw() {
  //image(img, 0, 0);
 
 for(int i =0; i< 100; i++) {
   float x = random(width);
   float y = random(height);
   color c = img.get(int(x), int(y));
   fill(c, 100);
   noStroke();
   ellipse(x, y, 5 * 2, 5 * 2);
 }
    
   for(int i = 0; i < rings.size(); i++){
     Ring r = rings.get(i);
     r.update();
     r.show();
     if(r.isHide()){
       rings.remove(i);
     }
   }
}

void mousePressed() {
  rings.add(new Ring(mouseX, mouseY));
}


class Ring {
  
  float x, y;
  float r = 1;
  float a = random(50, 110);
  int w = 8;
  
  Ring(float cx, float cy) {
    x = cx;
    y = cy;
  }
  
  void show() {
    noFill();
    color c = color(255, 255, 255, a);
    stroke(c);
    strokeWeight(w);
    ellipse(x, y, r * 2, r * 2);
  }
  
  void update() {
    r += 2;
    a -= 1;
  }
  
  boolean isHide() {
    return a <= 0;
  }
}
