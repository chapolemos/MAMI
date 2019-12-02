PImage dir, esq, idl, sdir, sesq;

//Estado 0 será parado, 1 será direita, e 2 esquerda.
int estado = 0;
int posX = 450;
int ultDir = 0;
boolean andando = false;


void setup () {
  size(600, 600);
  dir = loadImage("spritedir.png");
  esq = loadImage("spriteesq.png");
  idl = loadImage("spriteidle.png");
  sdir = loadImage("setadir.png");
  sesq = loadImage("setaesq.png");
  textSize(32);
  fill (0);
}


void draw() {
  background(200);
  scale(0.5);
  mef();
  scale(2.0);
  texto();
  
}
//Função do texto informativo na tela
void texto() {
  if (estado == 1) {
    if (andando)
    text("Andando pra direita", 20, 580);
    else
    text("Parado olhando pra  direita", 20, 580);
  }
  if (estado == 2) {
    if(andando)
    text("Andando pra esquerda", 20, 580);
    else
    text("Parado olhando pra  esquerda", 20, 580);
  }
  if (estado == 0) {
    text("Parado", 20, 580);
  }
}
void mef() {
  if (!keyPressed) {
    andando = false;
  }
  if (keyPressed && keyCode == RIGHT) {
    posX+=7;
    estado = 1;
    andando = true;
    image(sdir,1050,20);
  }
  if (keyPressed && keyCode == LEFT) {
    posX-=7;
    estado = 2;
    andando = true;
    image(sesq,850,20);
  }


  if (estado == 0) {
    image(idl, posX, 430);
  }
  if (estado == 1) {
    image(dir, posX, 430);      
  }
  if (estado == 2) {
    image(esq, posX, 430);
  }
}
