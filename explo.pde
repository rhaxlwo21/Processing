//유저와 버튼, 폰트 선언
int userA, userB, userC, userD, userE = 0;
boolean button1, button2, button3, button4, button5=false;

PFont font;

//화면 사이즈와 배경, 글씨체 선언
void setup() {
  size(1920,1080);
  background(255, 255, 255);
  font=createFont("돋움체",400);
}

//draw의 시작, 메뉴 상자, 메뉴 글씨 그리기
void draw() {
  rectMode(CENTER);
  //종료하기 상자
  fill(200, 200, 200);
  rect(width/2, height/2-15, 600, 60);
  //시작하기 상자
  fill(200, 200, 200);
  rect(width/2, height/2-90, 600, 60);
  //도움말 상자
  fill(200, 200, 200);
  rect(width/2, height/2+65, 600, 60);
  
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
     startGame();  
 }
  
  //버튼3번이 true이면 배경을 흰색으로, helper함수를 실행하고 버튼3번을 false로한다 = 도움말
  if(button3 == true){
    background(255,255,255);
    helper();
    button3 = false;
  }
  
  //버튼3번이 false, 버튼 4번이 true이면 돌아가기 창 실행가능
  if(button3 == false && button4 == true){
    background(255,255,255);
    button3 = false;
    button4 = false;
  }
  
  //길이 계산용 십자선
  //line(width/2,0,width/2,height);
  //line(0,height/2,width,height/2);
}

//버튼 역할, 지정된 범위클릭시 버튼이 on, off
void mouseEvent(){
  //종료하기
  if(mouseX >= 680 && mouseX <=1260 && mouseY >= 495 && mouseY <= 555){
    button1 =! button1;
  }
  
  if(mouseX >= 680 && mouseX <=1260 && mouseY >= 420 && mouseY <= 480){
    button2 =! button2;
  }
  
  if(mouseX >= 680 && mouseX <=1260 && mouseY >= 575 && mouseY <= 635){
    button3 =! button3;
  }
  
  if(mouseX >= 1450 && mouseX <=1550 && mouseY >= 870 && mouseY <= 930){
    button4 =! button4;
  }
  
}

//helper함수 실행시 도움말과 게임 방식 출력
void helper(){
  fill(0);
  textFont(font,20);
  textAlign(CENTER);
  text("이 게임은 샌프란시스코 익스플로라토리움(Exploratorium) 과학관 1층에서 보았던 협동심(의리) 게임을보고\n제작한 게임입니다. 매우 기본적이고 초라하지만 재밌게 봐주세요.\n\n이 게임은 최대 5명이 참가할수 있는 게임입니다\n인원은 5명에 가까울수록 좋습니다.\n시작하기를 누르면 참가하실 자리의 버튼을 누르십시오.\n버튼을 누른 자리에서만 실행하실수 있습니다.\n\n버튼을 누르면 누른사람은 1점, 누르지 않은 사람은 2점씩 올라갑니다.\n\n점수가 가장 높은 사람이 승리합니다.\n 하지만 아무도 버튼을 누르지 않는 다면, 게임은 종료 됩니다.\n 그럼 이만 즐겜~",width/2,height/100*10);

  fill(200.200,200);
  rectMode(CENTER);
  rect(1500,900,100,60);
  fill(0);
  textFont(font,20);
  textAlign(CENTER);
  text("돌아가기",1500,900);
}

void startGame(){
  background(255,255,255);
}
