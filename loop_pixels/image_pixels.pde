// loop pixels

void setup(){
  size(600, 400);
  background(255);
  
  //loadPixels();
  //for(int i=0; i<pixels.length; i++){
  //  pixels[i] = color(random(255), random(255) ,random(255));
  //}
  //updatePixels();
  
  //loadPixels();
  //for(int x = 0; x< width; x++){
  //  for(int y = 0; y< height; y++){
  //    int loc = x + y *width;
  //    float d = dist(x, y, width/2, height /2);
  //    pixels[loc] = color(random(d) );
  //  }
  //}
  //updatePixels();
}

void draw(){
  loadPixels();
  for(int x = 0; x< width; x++){
    for(int y = 0; y< height; y++){
      int loc = x + y *width;
      float d = dist(x, y, width/2, height /2);
      pixels[loc] = color(random(d) );
    }
  }
  updatePixels();
}