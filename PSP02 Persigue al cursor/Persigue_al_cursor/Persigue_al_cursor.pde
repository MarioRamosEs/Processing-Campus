private PVector pos, dir, obj;
private float vel = 1;

void setup() {
  size(600, 600);
  ellipseMode(CENTER);

  pos = new PVector(300, 300);
  dir = new PVector(0, 0);
}

void draw() {
  background(0);

  //Establecer objetivo
  obj = new PVector(mouseX, mouseY);

  //Establecer dirección
  if (pos.x < obj.x) dir.x = 1;
  if (pos.x > obj.x) dir.x = -1;
  if (pos.y < obj.y) dir.y = 1;
  if (pos.y > obj.y) dir.y = -1;

  //Movimiento cursor
  pos.add(dir.mult(vel).copy()); 

  //Pintar la ellipse
  fill(255, 0, 0);
  ellipse(pos.x, pos.y, 30, 30);
}