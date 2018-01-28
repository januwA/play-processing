// image edge
// s03.jpg w=800 h=500
// 1.jpg  w=1024 h=724

PImage img;
String imgSrc = "C:/Users/Administrator/Pictures/lovewallpaper/s03.jpg";


void setup(){
  size(800, 500);
  img = loadImage(imgSrc);
}

void draw(){  
  loadPixels();
  img.loadPixels();
  for(int x = 0; x< width-1; x++){
    for(int y = 0; y< height; y++){
      int loc1 = x     + y *width;
      int loc2 = (x+1) + y *width;
      float b1 = brightness(img.pixels[loc1]);
      float b2 = brightness(img.pixels[loc2]);
      
      float diff = abs(b2-b1);
      float m = map(mouseX, 0, 1024, 50, 10);
      if(diff > m){
        pixels[loc1] = color(0,255,0);
      }else{
        pixels[loc1] = color(100, 0, 255);
      }
      
      //pixels[loc1] = color(diff);
    }
  }
  updatePixels();
  // noLoop();
}