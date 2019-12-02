PImage barbatos, mikazuki, intersec;
color cor;
boolean trans;
char img = 'B';
int x1 = 479, x2 = 480, yy = 0;



void setup() {
  size(960, 540);
  frameRate(60);
  mikazuki = loadImage("01.png");
  barbatos = loadImage("02.png");
  intersec = createImage(960, 540, RGB);

  //Preenchimento inicial da imagem por meio de get e set
  for (int x = 0; x<960; x++) {
    for (int y = 0; y<540; y++) {
      cor = barbatos.get(x, y);
      intersec.set(x, y, cor);
    }
  }
  //Primeira imagem, a base.
  image(intersec, 0, 0);
}

void draw() {

  casos();
  if (trans) {
    transicao();
  }

  image(intersec, 0, 0);
}

//Função pra checar os casos, e qual transição deve ocorrer.
void casos() {
  if (mousePressed && !trans) {
    trans = true;
  }
  if (x1 > width && img == 'B') {
    x1 = 479;
    x2 = 480; 
    trans = false;
    img = 'M';
  }
  if (x1 > width && img == 'M') {
    x1 = 479;
    x2 = 480; 
    trans = false;
    img = 'B';
  }
}

//Função que realiza a transição
void transicao() {
  switch(img) {

  case 'B':
    x1++;
    x2--;
    if (x1<960) {
      for (int y = 0; y<540; y++) {
        cor = mikazuki.get(x1, y);
        intersec.set(x1, y, cor);
      }
    }

    if (x2>0) {
      for (int y = 0; y<540; y++) {
        cor = mikazuki.get(x2, y);
        intersec.set(x2, y, cor);
      }
    }
    break;

  case 'M':
    x1++;
    x2--;
    if (x1<960) {
      for (int y = 0; y<540; y++) {
        cor = barbatos.get(x1, y);
        intersec.set(x1, y, cor);
      }
    }

    if (x2>0) {
      for (int y = 0; y<540; y++) {
        cor = barbatos.get(x2, y);
        intersec.set(x2, y, cor);
      }
    }
    break;
  }
}
