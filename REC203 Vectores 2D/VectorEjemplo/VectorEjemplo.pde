//Declaración de los vectores
PVector posicion, direccion;
float velocidad;

void setup() {
  size(500, 500);
  background(0);

  //Inicialización de los vectores
  posicion = new PVector(50, 50);
  direccion = new PVector(1, 0.5);
  velocidad = 2;
}

void draw() {
  background(0);
  fill(0, 0, 255);

  //Suma a la posicion, la direccion multiplicada por la velocidad
  posicion.add(direccion.copy().mult(velocidad));
  ellipse(posicion.x, posicion.y, 60, 60);
}