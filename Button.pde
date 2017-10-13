int x,y,w,h;
boolean button=false;

void setup(){
  size(600,600);
}

void draw(){
  x=width/2;
  y=height/2;
  w=200;
  h=200;

  if(button==true){
  background(255,0,0);
  }else if(button==false){
   background(0,0,random(255));
  }
  
  fill(0,255,0);
  rectMode(CENTER);
  rect(x,y,w,h);
}

void mousePressed(){
  if(mouseX<400&&mouseX>200){
    if(mouseY<400&&mouseY>200){
      button=!button;
    }
  }
}
