int x, y;

void setup() {
  size(300, 300);
  ellipseMode(CENTER);
  cargar();
}

void draw() {
  background(0);
  fill(225, 0, 0);
  ellipse(x, y, 30, 30);
}


//----------------------
void cargar() {
  String txt[] = loadStrings("datos.txt");
  x = int(txt[0]);
  y = int(txt[1]);
  println("Datos cargados!");
}

void guardar() {
  String[] txt = new String[2];
  txt[0] = x+"";
  txt[1] = y+"";
  saveStrings("datos.txt", txt);
  println("Datos guardados!");
}


//----------------------
void mousePressed() {
  x = mouseX;
  y = mouseY;
}

void keyReleased() {
  if (key == 'a') cargar();
  if (key == 'b') guardar();
}