
void setup(){  
size(800,600); 
}

void draw(){
//Variáveis para a posição do círculo, e cálculo de distância
float mx = map (mouseX,0,800,0,512);
float my = map (mouseY,0,600,0,288);
float dm = dist(mouseX,mouseY,400,300);
float dc = dist(mx+144,my+156,400,300);

//Configuração de Tela
background(200);
fill(255);
noStroke();
rect(144,156,512,288);

//Impressão dos valores de mx e my para teste
println(mouseX,mx);
println(mouseY,my);

//Círculos parametrizados, azul e vermelho.

fill(0,0,255);
ellipse(mouseX,mouseY,15,15);
fill(255,0,0);
ellipse(mx+144,my+156,10,10);

//Textos da esfera azul e vermelha.
fill(0);
text(int(dm),8+mouseX,mouseY);
text(int(dc),8+144+mx,156+my);

}
