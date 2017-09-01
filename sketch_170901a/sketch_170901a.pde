void setup(){
size (400,400);
background (255);
}

void draw(){
  noFill();
  rectMode(CENTER);
  rect(200,200,50,50);
  noFill();
  rectMode(CENTER);
  rect(200,200,100,100);
  noFill();
  rectMode(CENTER);
  rect(200,200,150,150);
  noFill();
  rectMode(CENTER);
  rect(200,200,200,200);
  
  noFill();
  rectMode(CENTER);
  rect(200,200,250,250);
  noFill();  
  rectMode(CENTER);
  rect(200,200,300,300);
  noFill();
  rectMode(CENTER);
  rect(200,200,350,350);
  
  line(0,0,400,400);
  line(400,0,0,400);
  line(200,0,200,400);
  line(0,200,400,200);
}