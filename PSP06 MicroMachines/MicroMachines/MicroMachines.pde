PShape imgCoche;
float x, y, r=90, vr;
PVector cocheSize = new PVector(100, 50);
float margenChoque;

void setup() {
  size(640, 360);
  shapeMode(CENTER);
  imgCoche = loadShape("coche.svg");

  margenChoque = cocheSize.x/2;
  x = width/2; 
  y = height/2;  //Establecemos el coche en el centro del Canvas.
} 

void draw() {
  background(255);

  //Límites pantalla. Cuando choca el coche gira 180 grados.
  if (x<0+margenChoque) r = r - 180;
  if (x>width-margenChoque) r = r - 180;
  if (y<0+margenChoque) r = r - 180;   
  if (y>height-margenChoque) r = r - 180;

  //Resta de velocidad fricción.
  if (vr>0) vr=vr-0.1;
  if (vr<0) vr=vr+0.1;

  //Transformación coordenadas cartesianas a polares.
  x = x + sin(radians(-r))*vr;
  y = y + cos(radians(-r))*vr;

  pushMatrix();
  translate(x, y);
  rotate(radians(r-90));
  shape(imgCoche, 0, 0, cocheSize.x, cocheSize.y);
  popMatrix();
}

void keyPressed() {
  if (key == 'a' || key == 'A') r = r - 8;
  if (key == 'd' || key == 'D') r = r + 8;
  if (key == 'w' || key == 'W') vr = vr - 0.5;
  if (key == 's' || key == 'S') vr = vr + 0.5;
}