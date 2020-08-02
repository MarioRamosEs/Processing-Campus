//import processing.opengl.*;
PFont Scroll, Future;
PImage nave, bala, flexa;
float angle2, angle3, rota, x, y, tr, a, b, c, aa, bb, cc, distx, disty, xxx, yyy, xx, ancho, trt, trt2, lcs, espera, asdf, angle, spera;
int seleccion, yy, ybala, xbala, nvl, qwerty, muertos, ultimolv, n, vidas, ultimo, xd, camtxt, xflexa;

float Version = 2.31;

String texto_scroll[];
String titulo = "Space Invaders !!";
String opcion1 = "1- Iniciar";
String opcion2 = "2- Instrucciones Menu";
String opcion3 = "3- Instrucciones Juego";
String opcion4 = "4- Salir";

int estado = 1;
boolean cambio;


PImage img[];
int[][] values;

ArrayList edgar = new ArrayList();

void setup() {
  xflexa = 30;
  camtxt = 1;
  texto_scroll = new String [4];
  texto_scroll[1] = "Space Invaders !! v"+Version+"   by : Mario Ramos";
  texto_scroll[2] = "Mueve el raton por las opciones y clickea";
  texto_scroll[3] = "Puedes salir del juego pulsando ESC";
  texto_scroll[0] = "Visita www.marf.es";

  qwerty = 200;
  rota = 0.005;
  asdf = 400;
  img = new PImage[2];
  img[0] = loadImage("a1.png");
  img[1] = loadImage("s2.png");
  flexa = loadImage("flexa.png");

  nvl = 1;
  ybala = -99;
  xbala = -99;

  for (int c=1; c<15; c++) {
    edgar.add(new invader((int)random(1, 3.99)));
  }

  muertos = 0;
  ultimolv = 1;
  n = 1;
  vidas = 3;
  ultimo = 0; // invaders k matastes cuando subistes d nivel
  size (1200, 800, P3D);
  noFill();
  tr = 80;
  distx = distx - random(-1, 1);
  disty = disty - random(-1, 1);
  Scroll = loadFont("CourierNewPS-BoldItalicMT-40.vlw");
  Future = loadFont("FutureEx-48.vlw");
  nave = loadImage("nave.png");
  bala = loadImage("bala.png");
  xx = 300;
  yy = 200;
  seleccion = 1;
  values = new int[width][height];
}

void draw() {

  if (estado == 1) { //Menu
    background(a, b, c);
    luces();
    opciones();
    fecha();
    scroll();
    trt = trt + lcs;
    if (trt > 150) lcs = -1;
    if (trt < 30) lcs = 1;
  }
  if (estado == 4) { ////////////// INSTRUCCIONES JUEGO !!!!!!!!!!!!!!!!!!!!!!!!!!
    background(a, b, c);
    scroll();
    luces();
    lights();
    andar();
    fecha();

    textFont(Scroll, 20);
    fill(225, 225, 225);
    text("Space Invaders , By Mario Ramos", 100, 100);
    text("Versión del Juego : "+Version, 100, 120);
    text("Instrucciones:", 100, 160);
    text("-Mueve la nave con el raton", 120, 180);
    text("-Dispara haciendo clik", 120, 200);
    text("-Puedes disparar a las balas para eliminarlas", 120, 220);
    text("-Puedes quitar el juego pulsando ESC", 120, 240);
    text("-Puedes poner pausa con BORRAR", 120, 260);
    text("-E intenta llegar al nivel mas alto posible !!", 120, 280);
    textFont(Scroll, 25);
    text("Para salir de Instrucciones , pulsa BORRAR", 100, 300);

    translate(800, 500, 0); 
    rotateY(y);
    rotateX(x);
    fill(204, 102, 0, tr);
    box(300, 200, 400);

    if (keyPressed) { 
      if (key == BACKSPACE) {
        estado = 1;
      }
    }
  }

  if (estado == 2) { //////////////////////////////// JUEGO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    juego();
  }

  if (estado == 5) { //////////////////////////// MENU PAUSA /////////////////////////////
    background(190, 0, 0);
    scroll();
    fecha();
    textFont(Future, 80); 
    fill(225, 225, 225);
    text("Pausa", 420, 200);
    textFont(Future, 50); 
    text("Pulsa ENTER para continuar", 175, 350);
    textFont(Scroll, 30); 
    text("Click aquí para abandonar", 330, 450);

    if (keyPressed) { 
      if (key == ENTER) {
        estado = 2;
      }
    }

    if (mouseY < 470 && mouseY > 430 && mousePressed == true) estado = 6;
  }

  if (estado == 6) { //////////////////////// SI ABANDONAS ////////////////////
    estado = 1;
    muertos = 0;
    ultimolv = 1;
    n = 1;
    vidas = 3;
    ultimo = 0;
  }

  if (estado == 3) { //////////////////////////////////// INSTRUCIONES MENU !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    background(a, b, c);
    luces();
    lights();
    andar();
    scroll();
    fecha();

    textFont(Scroll, 20);
    fill(225, 225, 225);
    text("Instrucciones :", 100, 160);
    text("- Para cambiar de opcion mueve el ratón", 120, 180);
    text("- Para seleccionar clikea", 120, 200);
    text("By Mario Ramos", 100, 240);
    textFont(Scroll, 25);
    text("Para salir de Instrucciones , pulsa BORRAR", 100, 300);

    translate(800, 500, 0); 
    rotateY(y);
    rotateX(x);
    fill(204, 102, 0, tr);
    box(300, 200, 400);

    if (keyPressed) { 
      if (key == BACKSPACE) {
        estado = 1;
      }
    }
  }
  noCursor();
  image(flexa, mouseX, mouseY);
  efecto();  //______________________________________________________________________________________________________________________________________
}

void luces () { ///////////////////////////////LUCES DE FONDO////////////////////
  if (a == aa) {
    aa = (int)random (0, 190);
  } 
  else {
    if (a > aa) a = a - 0.5;
    if (a < aa) a = a + 0.5;
  }

  if (b == bb) {
    bb =  (int)random (0, 190);
  } 
  else {
    if (b > bb) b = b - 0.5;
    if (b < bb) b = b + 0.5;
  }

  if (c == cc) {
    cc =  (int)random (0, 190);
  } 
  else {
    if (c > cc) c = c - 0.5;
    if (c < cc) c = c + 0.5;
  }
}

void andar() { ///////////////////////MOVIMIENTO DEL CUBO///////////////////
  if (distx > x) x = x + 0.003;
  if (distx < x) x = x - 0.003; 
  if (disty > y) y = y + 0.003;
  if (disty < y) y = y - 0.003; 
  float distancia = dist (x, y, distx, disty);
  if (distancia < 1) {
    distx = distx - random(-1, 1);
    disty = disty - random(-1, 1);
  }
}

void opciones() { //////////////////////////OPCIONES PARA ELEGIR Y TITULO///////////////
  textFont(Future, 65);
  fill(225, 225, 225);
  text(titulo, 100, 100);

  textFont(Future, 30);
  fill(225, 225, 225);
  text(opcion1, 100, 200);
  text(opcion2, 100, 250);
  text(opcion3, 100, 300);
  text(opcion4, 100, 350);
  text(" ->", xflexa, yy);

  if (mouseY < 210 && mouseY > 170) {
    yy = 200;

    if (mousePressed == true) {
      estado = 2;
      trt = 15;
    }
  }

  if (mouseY < 260 && mouseY > 210) {
    yy = 250;
    if (mousePressed == true) estado = 3;
  }

  if (mouseY < 330 && mouseY > 260) {
    yy = 300;
    if (mousePressed == true) estado = 4;
  }

  if (mouseY < 360 && mouseY > 330) {
    yy = 350;
    if (mousePressed == true) exit();
  }
}

void fecha() { //////////////////FECHA Y HORA//////////////////
  String dia = day()+"/"+month()+"/"+year();
  String hora = hour()+":"+minute()+":"+second();
  textFont(Future, 30);
  fill(225, 225, 225);
  text(dia, 130, 500);
  text(hora, 130, 530);
}

void actu_edgars() { ///////////////ACTUALIZADOR DE INVADERS////////////////
  for (int m = 0; m < edgar.size(); m++) {
    invader a = (invader) edgar.get(m);
    a.actu();
  }
}

void game_over() { /////////////////////SI PIERDES/////////////////
  background(a, b, c);
  luces();
  lights();
  andar();
  fecha();
  rota = 0.005;

  trt = trt + lcs;
  if (trt > 150) lcs = -1;
  if (trt < 30) lcs = 1;

  textFont(Future, 50);
  fill(225, 225, 225);
  text("Game Over", 250, 200);
  textFont(Scroll, 30);
  text("Enter para volver al Menu", 100, 300);

  translate(800, 500, 0); 
  rotateY(y);
  rotateX(x);
  fill(204, 102, 0, tr);
  box(300, 200, 400);

  if (keyPressed && key == ENTER) estado = 6;
}

void scroll() {
  textFont(Scroll, 35);
  fill(225, 225, 225);
  text(texto_scroll[camtxt], xx, 750);
  xx = xx - 4;
  if (xx < 0 - 1200 ) {
    camtxt = camtxt + 1;
    if (camtxt > 3) camtxt = 0;
    xx = 1200;
  }
}

// --------------------------CODIGO DEL FONDO ANIMADO------------------
void efecto() {
  if (millis() - espera > asdf) {
    xd = xd + 1;
    espera = millis();
    if (xd > 1) xd = 0;

    img[xd].loadPixels();
    for (int i = 0; i < img[xd].height; i++) {
      for (int j = 0; j < img[xd].width; j++) {
        color pixel = img[xd].pixels[i*img[xd].width + j];
        values[j][i] = int(brightness(pixel));
      }
    }
  }

  translate(width/2, height/2, 0);   // Move to the center
  scale(2.5);                        // Scale to 400%
  angle += rota;
  angle2 = (float)mouseY/5000;
  angle3 = (float)mouseX/4000;
  rotateY(angle);
  rotateX(angle2);
  rotateZ(angle3);  

  // Display the image mass
  for (int i = 0; i < img[xd].height; i += 2) {
    for (int j = 0; j < img[xd].width; j += 2) {
      stroke(values[j][i], 153);
      float x1 = j-img[xd].width/2;
      float y1 = i-img[xd].height/2;
      float z1 = -values[j][i]/2;
      float x2 = j-img[xd].width/2;
      float y2 = i-img[xd].height/2;
      float z2 = -values[j][i]/2-4;
      line(x1, y1, z1, x2, y2, z2);
    }
  }
}


