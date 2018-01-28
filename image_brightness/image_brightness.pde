// image brightness

PImage img;
String imgSrc = "C:/Users/Administrator/Pictures/lovewallpaper/1.jpg";


void setup(){
  size(1024, 724);
  img = loadImage(imgSrc);
}

void draw(){  
  loadPixels();
  img.loadPixels();
  for(int x = 0; x< width; x++){
    for(int y = 0; y< height; y++){
      int loc = x + y *width;
      
      float b = brightness(img.pixels[loc]);
      
      float m = map(mouseX, 0, 724, 0, 255);
      if(b > m){
        pixels[loc] = color(100, 100, 100, 200);
      }else{
        pixels[loc] = color(100, 100, 100, 100);
      }
      
    }
  }
  updatePixels();
}