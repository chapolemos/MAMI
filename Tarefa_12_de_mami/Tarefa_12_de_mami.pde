PImage andando, martelando, parado, pulando;

//Variáveis globais
int estado = 0;
int posX = 400;
int posY = 350;
int tempoPulando = 0;
int tempoMartelando = 0;
int tempoQueda = 0;
boolean pula = false;



void setup() {  
  size(600, 600);
  andando = loadImage("andando.png");
  martelando = loadImage("martelando.png");
  parado = loadImage("parado.png");
  pulando = loadImage("pulando.png");
}


void draw() {
  frameRate(40);
  background(200);
  fill(100);
  noStroke();
  rect(0, 500, 600, 100);
  mario();
  //println("Estado:", estado, posX, posY, anda);
  println("Estado:", estado, "Tempop:", tempoPulando, "Tempom:", tempoMartelando, "TempoQ", tempoQueda, pula);
}

void mario() {
  if (tempoQueda < 30)
    posY+=6;
  //Loop do tempo
  tempoPulando--;
  if (tempoPulando <0)
    tempoPulando = 0;

  tempoMartelando--;
  if (tempoMartelando <0)
    tempoMartelando = 0;

  tempoQueda--;
  if (tempoQueda <0)
    tempoQueda = 0;
  //Limite do Y
  if (posY>=350)
    posY = 350;
  if (tempoQueda == 0)
    pula = false;

  //Verificar validez dos estados e transitar estados
  //Estado 0
  if (tempoPulando == 0 && tempoMartelando == 0)
    estado = 0;

  //Estado 1
  if (tempoPulando > 0 && tempoMartelando == 0)
    estado = 1;
  //Estado 2 - 
  if (tempoPulando == 0 && tempoMartelando > 0)
    estado = 2;

  //Estado 3 - Pular Martelando
  if (tempoMartelando > 0 && pula == true)
    estado = 3;
  //Estado 4 - Martelar pulando

  if (estado == 0) {
    
    image(parado, posX, posY);
    if (keyPressed && keyCode == UP && tempoPulando == 0) {
      tempoPulando = 30;
      
    }
    if (keyPressed && key == ' ') {
      tempoMartelando = 60;
    }
  }
  // Pulando
  if (estado == 1) {
    pula = true;
    image(pulando, posX, posY);
    posY-=5;
    tempoQueda = 30;
    if (keyPressed && key == ' ') {
      tempoMartelando = 60;
    }
  }
  // Martelando
  if (estado == 2) {
    image(martelando, posX, posY);

    if (keyPressed && keyCode == UP && tempoPulando == 0) {
      tempoPulando = 30;
      estado = 4;
    }
  }
  // Pular Martelando
  if (estado == 3) {
    image(martelando, posX, posY);
    posY+=5;
  }
  // Martelar Pulando
  if (estado == 4) {
    image(martelando, posX, posY);
    posY-=11;
  }
}
