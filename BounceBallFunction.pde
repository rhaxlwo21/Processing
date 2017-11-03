int x=0;
int speed=5;

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  move();
  bounce();
  ball();
}

void move(){
  x=x+speed;
}

void bounce(){
  if((x>width)||(x<0)){
    speed=speed*-1;
  }
}

void ball(){
  stroke(0);
  fill(175);
  ellipse(x,100,32,32);
}
