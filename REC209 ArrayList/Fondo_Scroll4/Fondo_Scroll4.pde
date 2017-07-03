diagonalSystem ds;
float r1, r2, r3,n;

void setup() {
  size(800, 600);
  smooth();
  ds = new diagonalSystem();
} 

void draw() {
  //Pintar el fondo con transparencia
  fill(0,30);
  noStroke();
  rect(0, 0, width, height);
  
  //Si hay menos de 101 objetos añadimos otro
  while(n < 101){
    ds.anyadir();
    n++;
  }
  
  //Actualizamos todos los objetos
  ds.actu();
} 