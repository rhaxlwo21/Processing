void setup(){
  size(800,600);
}

void draw(){
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  translate(mouseX,mouseY);
  
  stroke(0);
  fill(175);
  rect(0,0,20,100);
  
  stroke(0);
  fill(255);
  ellipse(0,-30,60,60);
}
