diagonalSystem ds;
float r1, r2, r3,n;

void setup() {
  size(800, 600);
  smooth();
  background(255);
  ds = new diagonalSystem();
} 

void draw() {
  background(0);
  while(n < 101){
    ds.anyadir();
    n++;
  }
  ds.actu();
} 


