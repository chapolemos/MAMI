PImage imgOriginal;
PImage imgRuido= createImage(327, 306, RGB);
PImage imgCinza= createImage(327, 306, RGB);
PImage imgVermelha = createImage(327, 306, RGB);
PImage imgAmarela = createImage(327, 306, RGB);
color corOriginal, corRuido, corCinza, corVermelha, corAmarela;
float corR, corG, corB;

void setup() {
  size(1635, 306);
  imgOriginal = loadImage("tsu.png");
  image(imgOriginal, 0, 0);

  imgRuido();
  image(imgRuido, 327, 0);

  imgCinza();
  image(imgCinza, 654, 0);
  
  imgVermelha();
  image(imgVermelha, 981, 0);

  imgAmarela();
  image(imgAmarela, 1308, 0);
}

void ruido(PImage img, color cor) {
  for (int i = 0; i<10000; i++) {
    int pixelX = int(random(327));
    int pixelY = int(random(306));
    float colorR = int(random(256));
    float colorG = int(random(256));
    float colorB = int(random(256));
    cor = color(colorR, colorG, colorB);
    img.set(pixelX, pixelY, cor);
  }
}
void imgRuido() {
  for (int x = 0; x < 327; x++) {
    for (int y = 0; y < 306; y++) {
      corOriginal = imgOriginal.get(x, y);
      corR = red(corOriginal);
      corG = green(corOriginal);
      corB = blue(corOriginal);
      corRuido = color(corR, corG, corB);
      imgRuido.set(x, y, corRuido);
    }
  }
  ruido(imgRuido, corRuido);
}
void imgCinza() {
  for (int x = 0; x < 327; x++) {
    for (int y = 0; y < 306; y++) {
      corOriginal = imgRuido.get(x, y);
      corR = red(corOriginal);
      corG = green(corOriginal);
      corB = blue(corOriginal);
      corCinza = color(corR, corG, corB);
      imgCinza.set(x, y, corCinza);

      float grey = (corR+corG+corB)/3;
      corCinza = color(grey);
      imgCinza.set(x, y, corCinza);
    }
  }
}

void imgVermelha () {
  for (int x = 0; x < 327; x++) {
    for (int y = 0; y < 306; y++) {
      corOriginal = imgCinza.get(x, y);
      corR = red(corOriginal);
      corG = green(corOriginal);
      corB = blue(corOriginal);
      corVermelha = color(corR, corG, corB);
      imgVermelha.set(x, y, corVermelha);
      
     
      corVermelha = color(corR,corR/2,corR/2);
      imgVermelha.set(x, y, corVermelha);
      
    }
  }
}

void imgAmarela () {
  for (int x = 0; x < 327; x++) {
    for (int y = 0; y < 306; y++) {
      corOriginal = imgVermelha.get(x, y);
      corR = red(corOriginal);
      corG = green(corOriginal);
      corB = blue(corOriginal);
      corAmarela = color(corR, corR, corR/2);
      imgAmarela.set(x, y, corAmarela);
      
      // float red = (corR+corG+corB)/3;
      //corVermelha = color(corR,corR/2,corR/2);
      //imgVermelha.set(x, y, corVermelha);
      
    }
  }
}
