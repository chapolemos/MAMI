int linhas = 7;
int colunas = 7;
void setup() {
size(900, 900);
for (int c = 0; c < linhas; c++){
  for (int l = 0; l < colunas; l++){
    bloco(100+(l*120), 100+(c*120));

    }
  }
}  
void bloco(int x, int y) {
fill (random(256),random(256),random(256));
rect(x-60,y-60,120,120);
fill (random(256),random(256),random(256));
ellipse(x, y, 100, 100);
fill (random(256),random(256),random(256));
ellipse(x, y, 70, 70);
fill (random(256),random(256),random(256));
ellipse(x, y, 40, 40);
}
