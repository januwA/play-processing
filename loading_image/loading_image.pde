PImage img;

void setup() {
  size(600, 400);
  img = loadImage("https://i.loli.net/2019/01/13/5c3ac84832d73.jpg");
}

void draw() {
  background(0);
  
  // https://processing.org/reference/tint_.html
  // https://processing.org/reference/map_.html
  tint(map(mouseX, 0, width, 0, 255), 100, map(mouseY, 0, height, 0, 255));
  image(img, 0, 0, mouseX, mouseY);
}
