int size=20;

void setup(){
  fullScreen();
}

void draw(){
  background(255);
  for(int i=0;i<width;i+=size){
    for(int j=0;j<height;j+=size){
      color c=color(random(255),random(255),random(255),random(255));
      
      fill(c);
      noStroke();
      rect(i,j,size,size);
    }
  }
}
