PFont f;

void setup(){
  size(400,200);
  f=createFont("Georgi",16);
}

void draw(){
  background(255);
  
  stroke(175);
  line(width/2,0,width/2,height);
  
  textFont(f);
  fill(0);
  
  textAlign(CENTER);
  text("Thist text is centered.",width/2,60);
  
  textAlign(LEFT);
  text("This text is legt aligened.",width/2,200);
  
  textAlign(RIGHT);
  text("This text is right aligned.",width/2,140);
}
