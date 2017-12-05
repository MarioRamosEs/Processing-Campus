private PVector pos, dir, obj;
private float vel;
private PImage enemigo, jugador;

void setup() {
  size(500, 300);
  imageMode(CENTER);
  noCursor();
  
  enemigo = loadImage("tiburon.png");
  jugador = loadImage("personaje.png");

  pos = new PVector(300, 300);
  dir = new PVector(0, 0);
  
  vel = 1; //Velocidad tiburón
}

void draw() {
  background(#00BCD4);

  //Establecer objetivo
  obj = new PVector(mouseX, mouseY);

  //Establecer dirección
  if (pos.x < obj.x) dir.x = 1;
  if (pos.x > obj.x) dir.x = -1;
  if (pos.y < obj.y) dir.y = 1;
  if (pos.y > obj.y) dir.y = -1;

  //Movimiento cursor
  pos.add(dir.mult(vel).copy()); 

  //Pintar el enemigo
  fill(255, 0, 0);
  image(enemigo, pos.x, pos.y, 40, 40);
  
  //Pintar al jugador
  image(jugador, obj.x, obj.y, 40, 40);
  
  //Alerta de contacto
  if(dist(pos.x, pos.y, obj.x, obj.y) < 40) println("¡Te ha pillado!");
}