/************************************************************
 Ejemplo de estructura optima para un videojuego en Processing 
 By: MARF - 14/11/17 - v1.16                                    
 *************************************************************/

Scene s;

void setup() {
  deltainit();
  size(550, 350);
  imageMode(CENTER);
}

void draw() {
  deltaactu();
}

void keyPressed() {
  s.keypressed();
}

void keyReleased() {
  s.keyreleased();
}