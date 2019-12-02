//Variável que definirá o "a" do Yin-Yang, e booleano para oscilar o tamanho do mesmo.

float x = 400;
boolean t = true;

void setup() {
  size (800, 600);
}

void yinyang (float a) {
  //Círculo maior
  noStroke();
  fill(255);
  ellipse(mouseX, mouseY, a, a);  
  fill(0);
  arc(mouseX, mouseY, a, a, -1.57, 1.57);

  //Círculos intermediários
  ellipse(mouseX, mouseY-a/4, a/2, a/2);
  fill(255);
  ellipse(mouseX, mouseY+a/4, a/2, a/2);

  //Círculos menores
  fill(0);
  ellipse(mouseX, mouseY+a/4, a/8, a/8);
  fill(255);
  ellipse(mouseX, mouseY-a/4, a/8, a/8);
}

void draw() {
  background (200);

  //Checagem do X para alteração do booleano.
  if (x>=420) {
    t = false;
  }
  if (x<=380) {
    t = true;
  }

  //Oscilação de tamanho da variável x
  if (t) {
    x+=0.3;
  } else {
    x-=0.3;
  }

  yinyang(x);
}
