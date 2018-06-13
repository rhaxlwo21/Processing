//유저와 버튼, 폰트 선언
int userA, userB, userC, userD, userE = 0;
//옵션 버튼
boolean button1, button2, button3, button4, button5=false;
//게임 참가 버튼
boolean buttonR, buttonG, buttonB, buttonY, buttonGr = false;
//게임내 협력 버튼
boolean buttonRG, buttonGG, buttonBG, buttonYG, buttonGrG = false;
PFont font;
//시간 카운트 다운
int begin; 
int duration = 15;
int time = 15;

//화면 사이즈와 배경, 글씨체 선언
void setup() {
  size(1920,1080);
  background(255, 255, 255);
  font=createFont("돋움체",400);
  begin = millis();
}

//draw의 시작, 메뉴 상자, 메뉴 글씨 그리기
void draw() {
   startMenu();
  
  //마우스 입력시 mouseEvent함수 시작
  if(mousePressed){
    mouseEvent();
  }
  
  //버튼1이 true면 프로세싱을 종료 = 종료
  if(button1 == true){
    exit();
  }
  
  //버튼2가 true이면 gameStart함수가 실행 = 게임시작
  if(button2 == true){
    background(255,255,255);
     readyGame();
     setGame();
     delay(100);
 }
  
  //버튼3번이 true이면 배경을 흰색으로, helper함수를 실행하고 버튼3번을 false로한다 = 도움말
  if(button3 == true){
    background(255,255,255);
    helper();
    button3 = false;
    delay(100);
  }
  
  //버튼3번이 false, 버튼 4번이 true이면 돌아가기 창 실행가능
  if(button3 == false && button4 == true){
    background(255,255,255);
    button3 = false;
    button4 = false;
    delay(100);
  }
  
  //길이 계산용 십자선
  //line(width/2,0,width/2,height);
  //line(0,height/2,width,height/2);
}

void startMenu(){
rectMode(CENTER);
  //종료하기 상자
  fill(200, 200, 200);
  rect(width/2, height/2-15, 600, 60,7);
  //시작하기 상자
  fill(200, 200, 200);
  rect(width/2, height/2-90, 600, 60,7);
  //도움말 상자
  fill(200, 200, 200);
  rect(width/2, height/2+65, 600, 60,7);
  
  //종료하기 글씨
  fill(0);
  textFont(font,30);
  textAlign(CENTER);
  text("종료하기",width/2,height/2);
  
  //시작하기 글씨
  fill(0);
  textFont(font,30);
  textAlign(CENTER);
  text("시작하기",width/2,height/2-70);
  
  //도움말 글씨
  fill(0);
  textFont(font,30);
  textAlign(CENTER);
  text("도움말",width/2,height/2+75);
}

//버튼 역할, 지정된 범위클릭시 버튼이 on, off
void mouseEvent(){
  //종료하기
  if(mouseX >= 680 && mouseX <=1260 && mouseY >= 495 && mouseY <= 555){
    button1 =! button1;
    delay(100);
  }
  
  if(mouseX >= 680 && mouseX <=1260 && mouseY >= 420 && mouseY <= 480){
    button2 =! button2;
    delay(100);
  }
  
  if(mouseX >= 680 && mouseX <=1260 && mouseY >= 575 && mouseY <= 635){
    button3 =! button3;
    delay(100);
  }
  
  if(mouseX >= 1450 && mouseX <=1550 && mouseY >= 870 && mouseY <= 930){
    button4 =! button4;
    delay(100);
  }
  
  if(mouseX >= 257 && mouseX <=357 && mouseY >= 695 && mouseY <= 745){
    buttonR =! buttonR;
    //delay(1000);
  }
  
  if(mouseX >= 564 && mouseX <=664 && mouseY >= 695 && mouseY <= 745){
    buttonG =! buttonG;
    //delay(1000);
  }
  
  if(mouseX >= 871 && mouseX <=971 && mouseY >= 695 && mouseY <= 745){
    buttonY =! buttonY;
    //delay(1000);
  }
  
  if(mouseX >= 1178 && mouseX <=1278 && mouseY >= 695 && mouseY <= 745){
    buttonGr =! buttonGr;
    //delay(1000);
  }
  
  if(mouseX >= 1486 && mouseX <=1586 && mouseY >= 695 && mouseY <= 745){
    buttonB =! buttonB;
    //delay(1000);
  }
  
  if(mouseX >= 257 && mouseX <=357 && mouseY >= 695 && mouseY <= 889){
    buttonRG =! buttonRG;
    //delay(1000);
  }
  
  if(mouseX >= 564 && mouseX <=664 && mouseY >= 695 && mouseY <= 889){
    buttonGG =! buttonGG;
    //delay(1000);
  }
  
  if(mouseX >= 871 && mouseX <= 971 && mouseY >= 695 && mouseY <= 889){
    buttonYG =! buttonYG;
    //delay(1000);
  }
  
  if(mouseX >= 1178 && mouseX <= 1278 && mouseY >= 695 && mouseY <= 889){
    buttonGrG =! buttonGrG;
    //delay(1000);
  }
  
  if(mouseX >= 1486 && mouseX <=1586 && mouseY >= 695 && mouseY <= 889){
    buttonBG =! buttonBG;
    //delay(1000);
  }
}

//helper함수 실행시 도움말과 게임 방식 출력
void helper(){
  fill(0);
  textFont(font,20);
  textAlign(CENTER);
  text("이 게임은 샌프란시스코 익스플로라토리움(Exploratorium) 과학관 1층에서 보았던 협동심(의리) 게임을보고\n제작한 게임입니다. 매우 기본적이고 초라하지만 재밌게 봐주세요.\n\n이 게임은 최대 5명이 참가할수 있는 게임입니다\n인원은 5명에 가까울수록 좋습니다.\n시작하기를 누르면 참가하실 자리의 버튼을 누르십시오.\n버튼을 누른 자리에서만 실행하실수 있습니다.\n\n버튼을 누르면 누른사람은 1점, 누르지 않은 사람은 3점씩 올라갑니다.\n\n점수가 가장 높은 사람이 승리합니다.\n 하지만 아무도 버튼을 누르지 않는 다면, 게임은 종료 됩니다.\n 그럼 이만 즐겜~",width/2,height/100*10);

  fill(200.200,200);
  rectMode(CENTER);
  rect(1500,900,100,60);
  fill(0);
  textFont(font,20);
  textAlign(CENTER);
  text("돌아가기",1500,900);
}

void setGame(){
//사용자별 ellipse, 색지정, 텍스트 구현
  //빨강 A
  noStroke();
  fill(255,0,0);
  ellipseMode(CENTER);
  ellipse(width/100*16,height/3*1,200,200);
  
  textFont(font,60);
  textAlign(CENTER);
  fill(0);
  text(userA,width/100*16,height/3*1);
  
  //연두 userB
  noStroke();
  fill(0,255,0);
  ellipseMode(CENTER);
  ellipse(width/100*32,height/3*1,200,200);
  
  textFont(font,60);
  textAlign(CENTER);
  fill(0);
  text(userB,width/100*32,height/3*1);
  
  //노랑 userC
  noStroke();
  fill(232,232,0);
  ellipseMode(CENTER);
  ellipse(width/100*48,height/3*1,200,200);
  
  textFont(font,60);
  textAlign(CENTER);
  fill(0);
  text(userC,width/100*48,height/3*1);
  
  //회색 userD
  noStroke();
  fill(127,127,127);
  ellipseMode(CENTER);
  ellipse(width/100*64,height/3*1,200,200);
 
  textFont(font,60);
  textAlign(CENTER);
  fill(0);
  text(userD,width/100*64,height/3*1);
 
  //파랑 userE
  noStroke();
  fill(0,0,255);
  ellipseMode(CENTER);
  ellipse(width/100*80,height/3*1,200,200);
  
  textFont(font,60);
  textAlign(CENTER);
  fill(0);
  text(userE,width/100*80,height/3*1);
}

//게임 화면, 원 5개 그리기
void readyGame(){
  textFont(font,30);
  textAlign(CENTER);
  fill(255,0,0);
  text("원 아래 빈 네모를 클릭하시면 Ready가 됩니다!! 빈자리는 Ready를 눌러주신 상태로 그냥 진행하시면 됩니다.",width/2,height/10);
  
  if(button2 == true){
  background(255,255,255);
  
  //게임 참가
  //userA
  if(buttonR == false){
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(width/100*16,height/3*2,100,50);
  }else{
  rectMode(CENTER);
  fill(255,0,0);
  rect(width/100*16,height/3*2,100,50);
  textFont(font,20);
  textAlign(CENTER);
  fill(0);
  text("Ready",width/100*16,height/3*2);
  buttonR = true;
  }
  
  //userB
  if(buttonG == false){
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(width/100*32,height/3*2,100,50);
  }else{
  rectMode(CENTER);
  fill(0,255,0);
  rect(width/100*32,height/3*2,100,50);
  textFont(font,20);
  textAlign(CENTER);
  fill(0);
  text("Ready",width/100*32,height/3*2);
  buttonG = true;
  }
  
  //userC
  if(buttonY == false){
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(width/100*48,height/3*2,100,50);
  }else{
  rectMode(CENTER);
  fill(232,232,0);
  rect(width/100*48,height/3*2,100,50);
  textFont(font,20);
  textAlign(CENTER);
  fill(0);
  text("Ready",width/100*48,height/3*2);
  buttonY = true;
  }
  
  //userD
  if(buttonGr == false){
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(width/100*64,height/3*2,100,50);
  }else{
  rectMode(CENTER);
  fill(127,127,127);
  rect(width/100*64,height/3*2,100,50);
  textFont(font,20);
  textAlign(CENTER);
  fill(0);
  text("Ready",width/100*64,height/3*2);
  buttonGr = true;
  }
  
  //userE
  if(buttonB == false){
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(width/100*80,height/3*2,100,50);
  }else{
  rectMode(CENTER);
  fill(0,0,255);
  rect(width/100*80,height/3*2,100,50);
  textFont(font,20);
  textAlign(CENTER);
  fill(0);
  text("Ready",width/100*80,height/3*2);
  buttonB = true;
  }
  }
  if((buttonR == true) && (buttonG ==true) && (buttonY == true) && (buttonGr == true) && (buttonB == true)){
    startGame(); 
    //gameStartCountdownTimer();
  } 
  
}

void startGame(){
   background(255,255,255);
   textFont(font,40);
   textAlign(CENTER);
   fill(0);
   text("자신의 버튼을 클릭하세요!! 서로를 믿지 마세요!! 남을 위해 희생이라는 것을 배워봅시다!",width/2,height/2);
   
   rectMode(CENTER);
   fill(255,0,0);
   rect(width/100*16,height/10*8,100,50);
   rectMode(CENTER);
   fill(0,255,0);
   rect(width/100*32,height/10*8,100,50);
   rectMode(CENTER);
   fill(232,232,0);
   rect(width/100*48,height/10*8,100,50);
   rectMode(CENTER);
   fill(127,127,127);
   rect(width/100*64,height/10*8,100,50);
   rectMode(CENTER);
   fill(0,0,255);
   rect(width/100*80,height/10*8,100,50);  
   
   
}

//라운드 타이머
void countdownTimer(){
  if (time > 0){  
    time = duration - (millis() - begin)/1000;
    textFont(font,30);
    textAlign(CENTER);
    fill(0);   
    text("다음 라운드까지 " + time + "초", width/100*70, 100);
   }
  }

//아무도 누르지 않으면 게임 종료
void gameClose(){
     textFont(font,50);
     textAlign(CENTER);
     fill(0);
     text("이런 의리없는 사람들!!",width/2,height/2);
}
