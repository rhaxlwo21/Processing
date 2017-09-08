int Z=0;

void setup(){
  size(600,400);
  background(255,255,255);
}

void draw(){
  ellipse(width/2,height/2,width/2,height/2);
  line(Z,Z,width,height);
  line(Z,height,width,Z);
  rectMode(CENTER);
  rect(width/7,height/2,width/8,height/10);
  rect(width*6/7,height/2,width/8,height/10);
}
