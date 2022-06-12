import processing.sound.*;

Star[] stars = new Star[800];
float speed;

baby dance;

SoundFile music;

public void setup(){
  size(800, 800);
   //call baby const
  dance = new baby();
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }

 music = new SoundFile(this, "data/blackpink.wav");

 music.loop();
 
}

#draw

public void draw(){
  speed = map(mouseX, 0, width, 0, 30);
  background(0);
  textAlign(CENTER);
  text("dance party.", height/2, width/2);
  dance.draw();
  translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++){
    stars[i].update();
    stars[i].show();
  }
 
 dance.move();
}
