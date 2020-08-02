diagonalSystem ds;
float r1, r2, r3, n;

void setup() {
  size(1920, 1080);
  smooth();
  background(255);
  ds = new diagonalSystem();
} 

void draw() {
  background(0);
  while (n < 250) {
    ds.anyadir();
    n++;
  }
  ds.actu();
} 

