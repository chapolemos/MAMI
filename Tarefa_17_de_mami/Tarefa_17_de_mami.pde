void setup() {
  size(800, 600);
  ellipseMode(CENTER);
} 
float xAng, yAng, tg, ang, j, xOlho, yOlho;

void draw() {
  background(200, 255, 200);
  
  olho(200, 450);
  olho(600, 450);
  olho(400, 150);
}

void olho(int x, int y) {
  j = dist(mouseX, mouseY, x, y);
  xAng = mouseX - x;
  yAng = mouseY - y;
  ang = atan2(yAng, xAng);
  xOlho = x+p2cx(75, ang);
  yOlho = y+p2cy(75, ang);

  if (yAng<0)
    ang+=TWO_PI;
    
  fill(255);
  ellipse(x, y, 200, 200); 
  fill(0); 
  if (j <=75)
    ellipse(mouseX, mouseY, 50, 50);
  else {
    ellipse(xOlho, yOlho, 50, 50);
  }
}
float p2cx(float r, float a) {
  return(r*cos(a));
}

float p2cy(float r, float a) {
  return(r*sin(a));
}
