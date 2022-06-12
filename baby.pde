public class baby{
  //properties
  float x,y;
  int w,h;
  PImage img;
  int babyX;
  int babyY;
  float speedX;
  float speedY;
  float angle;
  
public baby(){
    img = loadImage("dancingBaby.png");
    
    //setup size variables
    w=300;
    h= 200;
    speedX = random(3,6);
    speedY = random(3,6);
    
    x = 800/2 - w/2;
    y= 800/2 - h/2;
 }
  
  void draw(){

    image(img, x, y, w, h);
   
 }
 
 void move(){
   x = x + speedX;
   if ((x > width - 180) || (x < - 60)){
     speedX = speedX * -1;
   }
   
   y = y + speedY;
   if ((y > height - 200) || (y < -40)){
     speedY = speedY * -1;
   }
   
 }
}
