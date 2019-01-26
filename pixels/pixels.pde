//video: https://www.youtube.com/watch?v=EmtU0eloTlE

void setup() {
  size(600, 400);
  background(0);
  
  //for(int x = 0; x < width; x++) {
  //  set(x, 200, color(255, 0, 0));
  //}
  
  loadPixels();
  
  //for(int i = 0; i< pixels.length; i++) {
  //  pixels[i] = color(random(255), random(255), random(255));
  //}
  
  for(int x =0; x < width; x++) {
    for(int y =0; y < height; y++) {
      float d = dist(x, y, width/2, height / 2);
      int i = x + y * width;
      pixels[i] = color(d);
    }
  }
  updatePixels();
}

void draw() {

}
