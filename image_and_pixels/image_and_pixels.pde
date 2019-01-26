PImage img;

void setup() {
  size(300, 168);
  img = loadImage("https://i.loli.net/2019/01/13/5c3ac84832d73.jpg");
}

void draw() {
  //image(img, 0, 0);
  
  loadPixels();
  img.loadPixels();
  
   for(int x = 0; x < width; x++){
     for(int y = 0; y < height; y++){
       int i = x + y * width;
       float r = red(img.pixels[i]);
       float g = green(img.pixels[i]);
       float b = blue(img.pixels[i]);
       float a = alpha(img.pixels[i]);
       
       if(x > width / 2) {
         pixels[i] = color(r / g, g * 2, b / 2, a);
       }else{
         pixels[i] = color(r, g , b, a);
       }
     }
   }
  
  updatePixels();
}
