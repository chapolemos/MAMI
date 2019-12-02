//Variáveis
int bastaoY = 250;
float bolaX = 20;
float bolaY = 300;
int dY = 5;
int dX = 5;
int score = 0;

void setup() {
  size (600, 600);
}

void draw() {
  //Respawn
  if (bolaX > 640) {
    bolaX = random(20, 200);
    bolaY = random(65, 535);
  }

  //Cenário e scoreboard
  noStroke();
  background(0);
  textSize(32);
  text(score, 480, 50);
  fill(255, 0, 0);
  fill(255);
  rect(0, 0, 800, 10);
  rect(0, 590, 800, 10);
  rect(0, 0, 10, 600);

  for (int a = 0; a < 100; a+=2) {
    rect(295, a*10-5, 10, 10);
  }

  //Bastão 
  rect(570, bastaoY, 20, 100);

  //Movimento do bastão
  if (keyPressed == true)  
    if (keyCode == DOWN)
      bastaoY = bastaoY + 7;
    else if (keyCode == UP)
      bastaoY = bastaoY - 7;

  //Limite de movimento do bastão
  if (bastaoY >= 487)
    bastaoY = 487;
  if (bastaoY <= 13)
    bastaoY = 13;

  //Bola
  ellipse(bolaX, bolaY, 20, 20);
  bolaX += dX;
  bolaY += dY;

  //Detecção de colisão
  if ((bolaX>=560 && bolaX <= 580 && bolaY >= bastaoY && bolaY <= bastaoY+100 )|| bolaX<=10) {
    dX = -dX;
    if (bolaX>=560)
    score++;
  }
  if (bolaY>=580 || bolaY<=20)
    dY = -dY;
}
