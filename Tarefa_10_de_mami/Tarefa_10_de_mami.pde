PImage imgAgua, imgTerra;

int[][] mapa = {{0, 0, 0, 0, 0, 0, 0, 0}, 
                {0, 0, 0, 1, 1, 0, 0, 0}, 
                {0, 0, 1, 1, 1, 1, 0, 0}, 
                {0, 1, 1, 1, 1, 1, 1, 0}, 
                {0, 1, 1, 1, 1, 1, 1, 0}, 
                {0, 0, 1, 1, 1, 1, 0, 0}, 
                {0, 0, 0, 1, 1, 0, 0, 0}, 
                {0, 0, 0, 0, 0, 0, 0, 0}};


void setup() {
  size(1200, 600);
  imgAgua = loadImage("wt.png");
  imgTerra = loadImage("gd.png");
  mostraMapa();
}

void mostraMapa() {
  for (int i=0; i<8; i++)
    for (int j=0; j<8; j++)
      switch(mapa[j][i]) {
      case 0:
        image(imgTerra, 532 - j*68+68*i, 30+i*34 + j*34); 
        break;
      case 1:
        image(imgAgua, 532 - j*68+68*i, 30+ i*34 + j*34);
        break;
      }
}
