diagonalSystem ds;
float r1, r2, r3, n, rt;
float version = 1.0;

void setup() {
  size(1000, 700, P3D);
  smooth();
  ds = new diagonalSystem();
} 

void draw() {
  fill(0, 30);
  noStroke();

  pushMatrix();
  translate(0, 0, 300);
  rect(0, 0, width, height);
  popMatrix();

  //rotateX((float)radians(mouseY/10));
  //rotateY((float)radians(mouseX/10));
  //background(0);

  while (n < 500) {
    ds.anyadir();
    n++;
  }
  ds.actu();
} 

