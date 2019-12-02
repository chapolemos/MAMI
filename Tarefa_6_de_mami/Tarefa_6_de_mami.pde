void setup () {
  size (800, 600);
  background(200);
  noStroke();
  rectMode(CENTER);
  ellipseMode(RADIUS);
  noStroke();
  mostraBandeiraBrasil(400, 300, 400);
}

void mostraBandeiraBrasil (float x, float y, float h) {
  //Módulo, Largura, Distância do losango e raio
  float m = h/14;
  float l = m*20;
  float dl = m *1.7;
  float r = m * 3.5;
  //Extremidades da bandeira
  float esq = x - l/2;
  float sup = y - h/2;
  float dir = x + l/2;
  float inf = y + h/2;

  //Retângulo Verde
  fill(0, 156, 59);
  rect(x, y, l, h);
  //Losango Amarelo
  fill(255, 223, 0);
  quad(esq+dl, y, x, sup+dl, dir-dl, y, x, inf-dl);
  //Círculo Azul
  fill(0, 39, 118);
  ellipse(x, y, r, r);
}
