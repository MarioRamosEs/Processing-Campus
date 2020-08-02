diagonalSystem ds;
float r1, r2, r3, n;
float Version = 1;

void setup() {
  size(800, 600);
  smooth();
  ds = new diagonalSystem();
} 

void draw() {
  fill(0, 30);
  rect(0, 0, width, height);
  while (n < 20) {
    ds.anyadir();
    n++;
  }
  ds.actu();
} 

