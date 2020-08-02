import ddf.minim.*;
//import de.bezier.data.sql.*;
Minim minim;
//MySQL dbconnection;
AudioSample disparo;
AudioSample impacto;

int arriba,abajo,izquierda,derecha,disparonave;
int arriba2,abajo2,izquierda2,derecha2,disparonave2;

float version = 3.6; //Sin conexión a la base de datos
ParticleSystem ps;
asteroideSystem as;
estrellaSystem es;
cajatexto texto;
float theta = 0.0;
float q, v, a, b, c, aa, bb, cc, tr, trr, xf, yf;
PFont led;
int seleccion;
int nivel = 1;   
int snivel;
int disparos;
int tiempo3 = millis();
boolean neon = false;
color colors = color (0, 0, 0);
int menu, mr;
String nombre;
int rojo, verde, azul;

PImage nave, bala, nave2, bala2;
float x, y, r, vr, xb, yb, rb, vidas, p; //nave1
float x2, y2, r2, vr2, xb2, yb2, rb2; //nave2
boolean mr2 = false;


void setup() {
  size(800, 600);
  nave = loadImage("nave.png");
  bala = loadImage("bala.png");
  nave2 = loadImage("nave2.png");
  bala2 = loadImage("bala2.png");
  x = width/2; 
  y = height/2;
  smooth();
  q = 0.01;
  v = 45;
  vidas = 3;
  xf = -30;
  ps = new ParticleSystem(1, new PVector(width/2, height/2, 0));
  as = new asteroideSystem();
  es = new estrellaSystem();
  led = loadFont("LED.vlw");

  minim = new Minim(this);
  texto = new cajatexto(330, 215, 100);
  disparo = minim.loadSample("disparo.wav");
  impacto = minim.loadSample("impacto.mp3", 512);
  //dbconnection = new MySQL( this, "h50mysql13.secureserver.net", "osorx", "osorx", "Hal9000");

  as.anyadir(1, 0);
  as.anyadir(2, 0);
  as.anyadir(3, 0);
}

void draw() {
  if (menu == 0) { //MENU
    luces();
    background(tr);
    onda();
    menu();
  }

  if (menu == 2) { //OPCIONES ___________
    luces();
    background(tr);
    onda();

    fill(225);
    text("Modo  NEON  =  "+neon, 20, 50);
    if (mouseY < 70 && mousePressed == true) neon = true;

    text("Volver", 650, 550);
    if (mouseY > 500 && mouseX > 600 && mousePressed == true) {
      menu = 0;
      colors = color(rojo, verde, azul);
    }

    if (mouseY > 100 && mouseY < 200 && mouseX < 200 && mousePressed == true) {
      if (rojo == 0) rojo = 225;
      else rojo = 0;
    }
    text("Rojo = "+rojo, 20, 150);

    if (mouseY > 250 && mouseY < 350 && mouseX < 200 && mousePressed == true)
    {
      if (verde == 0) verde = 225;
      else verde = 0;
    }
    text("Verde = "+verde, 20, 300);

    if (mouseY > 400 && mouseY < 500 && mouseX < 200 && mousePressed == true) 
    {
      if (azul == 0) azul = 225;
      else azul = 0;
    }
    text("Azul = "+azul, 20, 450);
  }

  if (menu == 3) {//CREDITOS
    luces();
    background(tr);
    onda();
    fill(225);
    text("Programa  Y  Diseño :  Mario Ramos", 20, 50);
    text("Versión  =  "+version, 20, 100);
    text("Fecha  =  11-Julio-2011", 20, 150);

    text("Volver", 650, 550);
    if (mouseY > 500 && mouseX > 600 && mousePressed == true) menu = 0;
  }

  if (menu == 5) { // ______________________GAMEOVER
    luces();
    background(tr);
    onda();
    fill(225);
    text("GAMEOVER", width/2-100, 60);
    int yp = 150;
    mr++;

    /*if ( dbconnection.connect() ) {
      dbconnection.query( "SELECT * FROM asteroids" );
      while (dbconnection.next ()) {
        int i = dbconnection.getInt("id");
        String s = dbconnection.getString("nombre");
        int n = dbconnection.getInt("disparos");
        text(s, 300, yp);
        text(n, 500, yp);
        yp = yp + 50;
      }
    }*/
    if (mr > 2)exit();
  }

  if (menu == 1) { //----------------------UN JUGADOR
    nave1();
  }

  if (menu == 6) { //DOS JUGADORES
    nave1();
    nave2();
  }
}

void menu() {
  fill(225);
  textFont(led, 100); 
  text("Asteroids", 20, 80);

  textFont(led, 50); 
  text("Un  Jugador", 160, 160);
  text("Dos  Jugadores", 420, 160);

  text("Opciones", 100, 260);
  text("Creditos", 300, 260);
  text("Salir", 500, 260);

  text("^", xf, yf);
  text("|", xf+7, yf+10);


  if (mouseX > 160 && mouseX < 420 && mouseY < 260) {
    seleccion = 1; //un jugador
    xf = 180;
    yf = 210;
  }

  if (mouseX > 420 && mouseX < width && mouseY < 260) {
    seleccion = 5; //dos jugadores
    xf = 440;
    yf = 210;
  }

  if (mouseX > 100 && mouseX < 300 && mouseY < 400 && mouseY > 260) {
    seleccion = 2; //opciones
    xf = 120;
    yf = 310;
  }

  if (mouseX > 300 && mouseX < 500 && mouseY < 400 && mouseY > 260) {
    seleccion = 3; //creditos
    xf = 320;
    yf = 310;
  }

  if (mouseX > 500 && mouseX < width && mouseY < 400 && mouseY > 26) {
    seleccion = 4; //salir
    xf = 520;
    yf = 310;
  }

  if (mousePressed == true) {
    if (seleccion == 1)menu = 1;
    if (seleccion == 2)menu = 2;
    if (seleccion == 3)menu = 3;
    if (seleccion == 4)exit();
    if (seleccion == 5)menu = 6;
  }
}

void onda() {
  if (random(0, 20) < 2) b += 0.0001;
  if (random(0, 20) < 2) b -= 0.0001;

  v += random(0, 0.5); //velocidad +
  v -= random(0, 0.5); //velodidad -

  theta += 0.02;
  noStroke();

  float x = theta;

  for (int i = 0; i <= 200; i++) {
    float y = sin(x)*v; //la subida y bajada de bolas
    fill(a+20, b+20, c+20);
    ellipse(i*5, y + 400, 10, 10);
    fill(a, b, c);
    rect(i*5-5, y + 400-5, 20, 400);
    x += q; //bote
  }


  for (int i = 0; i <= 200; i++) {
    float y = sin(x)*v; //la subida y bajada de bolas
    fill(a+20, b+20, c+20, 70);
    ellipse(i*5, y + 390, 10, 10);
    fill(a, b, c, 50);
    rect(i*5-5, y + 390-5, 20, 400);
    x += q; //bote
  }
}

void luces() {
  if (a == aa) {
    aa = (int)random (0, 200);
  } 
  else {
    if (a > aa) a = a - 0.5;
    if (a < aa) a = a + 0.5;
  }

  if (b == bb) {
    bb =  (int)random (0, 200);
  } 
  else {
    if (b > bb) b = b - 0.5;
    if (b < bb) b = b + 0.5;
  }

  if (c == cc) {
    cc =  (int)random (0, 200);
  } 
  else {
    if (c > cc) c = c - 0.5;
    if (c < cc) c = c + 0.5;
  }

  if (tr == trr) {
    trr = (int)random (0, 100);
  } 
  else {
    if (tr > trr) tr = tr - 0.1;
    if (tr < trr) tr = tr + 0.1;
  }
}

void stop() {
  disparo.close();
  impacto.close();
  minim.stop();

  super.stop();
}

