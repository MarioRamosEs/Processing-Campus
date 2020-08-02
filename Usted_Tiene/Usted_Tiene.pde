PFont fuente;
String uno,dos;
PImage troll;

void setup(){
  size(400,150);
  fuente = createFont("Arial", 32);
  textFont(fuente);
  troll = loadImage("trollface.jpg");
  
  uno = "Si";
  dos = "No";
}

void draw(){
  background(0);
  fill(225);
  text("¿Usted tiene pene?", 60, height/2-30);
  
  text(uno,60,120);
  text(dos,width-80,120);
  
  float distuno = dist(mouseX,mouseY,70,125);
  if (distuno < 40){
    uno = "No";
    dos = "Si";
    if (mousePressed == true) image(troll, 0, 0);
  }
  
  float distdos = dist(mouseX,mouseY,width-70,125);
  if (distdos < 40){
    dos = "No";
    uno = "Si";
    if (mousePressed == true) image(troll, 0, 0);
  }
}


