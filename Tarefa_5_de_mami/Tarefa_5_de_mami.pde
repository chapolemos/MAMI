float tAtual = 0;
float dAtual;
float dAtualH;

void setup() {
  size(600, 600);  
  frameRate(1);
  mostraMundo();
}

void draw() {
  dAtual = MRUV(10, tAtual, -1);
  dAtualH = MRU(10, tAtual);
  println("Altura:", dAtual,"Distancia:",dAtualH) ;
  tAtual++;
  
  fill(255,0,0);
  ellipse(55+dAtualH, 300-dAtual, 10, 10);
  textSize(12);
  
  
}


float MRUV(float v, float t, float a) {
  float d;
  //vAtual = v+ a;
  d = v * t + a * t*t/2.0;
  float va = v + a*t;
  fill(255);
  rect(0,0,600,50);
  fill (0);
  text("Velocidade vertical: "+va+" Distancia: "+dAtualH+" Altura: "+dAtual,20,15);
  text("Velocidade horizontal: "+10+" Aceleração: "+a+" Tempo: "+tAtual,20,40);
  return(d);
}

float MRU(float v, float t) {
  float d;
  d = v * t;
  return(d);
}


void mostraMundo() {
  for (int i = 0; i < 12; i++) {
    line(i * 50, 0, i * 50, 600);
    line(0, i * 50, 600, i * 50);
  }
}
