float  tAtual = 0;
float  dAtual = 0;
float contador = 0;
void setup() {

}

float MRU(float v, float t) {
  float d;
  d = v*t;
  return (d);
}

void draw(){
  dAtual = MRU(10,tAtual);
  println("Tempo:", tAtual, "Distancia:", dAtual);
  contador++;
  tAtual= (contador)/60;
}
