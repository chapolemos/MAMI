PImage agua;

void setup() {
  noStroke();
  size (752, 310);
  agua = loadImage("agua.png");
  rectMode(CENTER);
  shapeMode(CENTER);
}

float x = 0;
float ang = 0;
float barcox;

void draw() {
  background(255);
  float y = sin(x);

  //Reset da coordenada da água
  if (barcox <= -752)
    x = 0;

  //Coordenada X da água, e escalamento
  barcox = -x*10;
  x+=0.05;

  //Água se movendo
  image(agua, barcox, 0);
  image(agua, barcox+752, 0);

  //Barquinho
  push();
  translate(137, 137+y*10);
  rotate(cos(x));
  fill(0);
  quad (-30, 0, 30, 0, 15, 20, -15, 20);
  rect (0, -10, 5, 60);
  fill(255, 0, 0);
  triangle(0, -40, -30, -40, 0, -20);
  pop();
}
