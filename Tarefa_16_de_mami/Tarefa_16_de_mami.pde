float r = 5;
float ang = 20;
float x = 0;
float y = 0;

void setup() {
  background(100);
  size(800, 800);
}

void draw() {
  espiral(x, y);
}

float p2cx(float r, float ang) {
  return r*cos(radians(ang));
}

float p2cy(float r, float ang) {
  return r*sin(radians(ang));
}

void espiral (float x, float y) {
  translate(width/2, height/2);
  x = p2cx(r, ang);
  y = p2cy(r, ang);
  println(x, y);
  noStroke();
  ellipse(x, y, 5, 5);
  fill(230, 230, 255);
  ang += 5;
  r += 0.5;
}
