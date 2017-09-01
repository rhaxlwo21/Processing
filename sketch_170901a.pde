int x=0;
int y=0;

void setup(){
  //size(1000,1000);
  fullScreen();
  background(255);
}

void draw(){
  fill(mouseX,mouseY,0);
  ellipse(mouseX,mouseY,x-mouseX,y-mouseY);
  x=x-10;
  y=y+10;
  if(x<10){
  x=width;
  }
  if(y>height){
  y=0;
  }
}