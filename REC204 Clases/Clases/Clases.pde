// Creamos objetos de tipo Enemigo
Enemigo marf, marf2, marf3, marf4;

void setup() {
  size(668, 400);
  //Inicializamo los enemigos
  marf = new Enemigo(40, 100, 30, 90);
  marf2 = new Enemigo(40, 200, 30, 90);
  marf3 = new Enemigo(40, 300, 30, 90);
  marf4 = new Enemigo(40, 0, 30, 90);
}

void draw() {
  background(#476EB9);
  //Llamamos a la función actualizar de los Enemigos
  marf.actualizar(1);
  marf2.actualizar(2);
  marf3.actualizar(3);
  marf4.actualizar(4);
}