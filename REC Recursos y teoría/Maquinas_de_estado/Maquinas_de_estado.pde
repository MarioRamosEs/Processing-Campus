public enum Estados { 
  REPOSO, ESTADO1, ESTADO2
}

Estados estado;

void setup() {
  size(450, 450);
  estado=Estados.REPOSO;
}

void draw() {
  background(0, 0, 0);
  switch(estado) {
  case REPOSO:
    break;
  case ESTADO1:
    ellipse(200, 200, 40, 40);
    break;
  case ESTADO2:
    rect (30, 30, 40, 40);
    break;
  }
}

void keyPressed() {
  if (key == 'a') estado = Estados.REPOSO;
  if (key == 'b') estado = Estados.ESTADO1;
  if (key == 'c') estado = Estados.ESTADO2;
}