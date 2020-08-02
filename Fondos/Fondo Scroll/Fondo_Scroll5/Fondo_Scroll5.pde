diagonalSystem ds;
float r1, r2, r3,n;

void setup() {
  size(800, 600);
  smooth();
  ds = new diagonalSystem();
} 

void draw() {
  fill(0,30);
  rect(0, 0, width, height);
  while(n < 101){
    ds.anyadir();
    n++;
  }
  ds.actu();
} 


