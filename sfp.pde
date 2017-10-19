boolean button=false;
boolean button1=false;
boolean button2=false;
boolean button3=false;

String[]headlines={
  "[NECT TECH]에 오신걸 환영합니다!!!","WELCOME TO [NEXT TECH]"
};

PFont f;  //전역폰트 변수
float x;  //수평위치
int index=0;

void setup(){
  fullScreen();
  f=createFont("돋움체",400);
  x=width;  //헤드라인의 시작위치를 초기화 한다
}

void draw(){
  background(255);

  fill(255,0,0);
  rect(width*1/5,height*3/4,100,100);
  
  fill(0,0,255);
  rect(width*2/5,height*3/4,100,100);
  
  fill(0,255,0);
  rect(width*3/5,height*3/4,100,100);

  fill(127,127,127);
  rect(width*4/5,height*3/4,100,100);
  
  fill(0);
  //현재위치에 헤드라인 표시
  textFont(f,200);
  textAlign(LEFT);
  text(headlines[index],x,height/2);
  
  //x를 감소시킨다
  x=x-3;
  
  //x가 음의 너비보다 작다면
  //화면을 벗어난 것이다
  float w=textWidth(headlines[index]);
  
  if(x<-w){
  x=width;
  index=(index+1)%headlines.length;
  }
  
  if(button==true){
    background(255);
    textAlign(CENTER); 
    text("점심시간\n00:00~00:00입니다",width/2,height*2/5); 
    
    fill(255,0,0);
    rect(width*1/5,height*3/4,100,100);
    
    fill(0,0,255);
    rect(width*2/5,height*3/4,100,100);

    fill(0,255,0);
    rect(width*3/5,height*3/4,100,100);

    fill(127,127,127);
    rect(width*4/5,height*3/4,100,100);  
  }
  
  if(button1==true){
    background(255);
    textAlign(CENTER);
    text("동아리 \nmade by 김주현",width/2,height*2/5);

    fill(0,0,255);
    rect(width*2/5,height*3/4,100,100);
    
    fill(255,0,0);
    rect(width*1/5,height*3/4,100,100);

    fill(0,255,0);
    rect(width*3/5,height*3/4,100,100);  
 
    fill(127,127,127);
    rect(width*4/5,height*3/4,100,100);
  }
  if(button2==true){    
    background(255);
    textAlign(CENTER);
    text("추가 예정",width/2,height/2);
    
    fill(0,0,255);
    rect(width*2/5,height*3/4,100,100);
    
    fill(255,0,0);
    rect(width*1/5,height*3/4,100,100);
  
    fill(0,255,0);
    rect(width*3/5,height*3/4,100,100);
  
    fill(127,127,127);
    rect(width*4/5,height*3/4,100,100);
  }
  if(button3==true){
    background(255);
    textAlign(CENTER);
    text("버튼은 하나라도\n 켜져있을시 끈후\n 다른 버튼을 \n키세요.",width/2,height*1/5);
    
    fill(0,0,255);
    rect(width*2/5,height*3/4,100,100);
    
    fill(255,0,0);
    rect(width*1/5,height*3/4,100,100);
  
    fill(0,255,0);
    rect(width*3/5,height*3/4,100,100);
  
    fill(127,127,127);
    rect(width*4/5,height*3/4,100,100);
  }
}

void mousePressed(){
  if(mouseX<width*1/5+100&&mouseX>width*1/5){    
    if(mouseY<height*3/4+100&&mouseY>height*3/4){
      button=!button;
    }
  }
  if(mouseX<width*2/5+100&&mouseX>width*2/5){
    if(mouseY<height*3/4+100&&mouseY>height*3/4){
      button1=!button1;
    }
  }
  if(mouseX<width*3/5+100&&mouseX>width*3/5){
    if(mouseY<height*3/4+100&&mouseY>height*3/4){
      button2=!button2;
    }
  }
  if(mouseX<width*4/5+100&&mouseX>width*4/5){
    if(mouseY<height*3/4+100&&mouseY>height*3/4){
      button3=!button3;
    }
  }
}
