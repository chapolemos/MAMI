int linhas = 2;
int colunas = 6;
void setup() {
size(900, 900);
for (int l = 0; l < linhas; l++){
  for (int c = 0; c < colunas; c++){
    bloco(150+(l*120), 150+(c*120));
    println(l,c);
    }
  }
}  
void bloco(int x, int y) {
fill (random(255),random(255),random(255));
rect(x-60,y-60,120,120);
fill (random(255),random(255),random(255));
ellipse(x, y, 100, 100);
fill (random(255),random(255),random(255));
ellipse(x, y, 70, 70);
fill (random(255),random(255),random(255));
ellipse(x, y, 40, 40);
}
