// set image pixels
PImage img;
String imgSrc = "C:/Users/Administrator/Pictures/lovewallpaper/1.jpg";

static class imgWH {
   static int w = 1024;
   static int h = 724;
  imgWH(){ // constructor
  }
}
 
int[] x = new int[2];

void setup(){
  x[0] = 22;
  // print(x[0]);
  // print(x.length);
  
  size(1024, 724);
  img = loadImage(imgSrc);
}

void draw(){  
  loadPixels();
  img.loadPixels();
  for(int x = 0; x< width; x++){
    for(int y = 0; y< height; y++){
      int loc = x + y *width;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      //if(x > 400){
      //  pixels[loc] = color(b*1.5, r/2, g);
      //}else{
      //  pixels[loc] = color(r,g,b);
      //}
      
      float d = dist(mouseX, mouseY, x, y);
      float factor = map(d, 0, 200, 2, 0);
      pixels[loc] = color(r*factor, g / 2, b, 100);
    }
  }
  updatePixels();
}