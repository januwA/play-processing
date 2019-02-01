// API: https://www.processing.org/reference/libraries/video/Movie.html
// video: https://www.youtube.com/watch?v=nJWV7X7df9w
import processing.video.*;
 
   Movie video;
 
   void setup() {
     size(600, 400);
     background(0);
     video = new Movie(this, "D:\\work\\video.mp4");
     video.loop();
     video.volume(0);
   }
 
   void movieEvent(Movie m) {
     m.read();
   }
 
   void mousePressed() {
     video.jump(video.time() + 3);
   }
 
   void draw() {
     // video.speed(4);
     image(video, 0, 0, width, height);
   }
