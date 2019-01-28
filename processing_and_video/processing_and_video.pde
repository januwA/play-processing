// https://www.youtube.com/watch?v=WH31daSj4nc&t=220s
import processing.video.*;
Capture video;

void setup() {
  size(600, 400);
  video = new Capture(this, 640, 480, 30);
  video.start();
}

void draw() {
  if(video.available()){
    video.read();
  }
  background(0);
  image(video, 0, 0);
}
