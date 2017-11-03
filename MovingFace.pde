int x=0;
int y=150;
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
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(x,y,32,32);
  fill(255);
  rect(x-4,y-4,4,4);
  rect(x+4,y-4,4,4);
  rect(x-4,y+4,4,4);
  line(x-4,y-4,x+4,y+4);
}
