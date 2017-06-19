/* Ejemplo de uso de la librería ControlP5
 * MARF Informática 2016
 * Versión 0.3
*/ 

import controlP5.*;
int estado = 1;
float n;
int c1, c2;
color colorFondo = (color) random(#000000);
ControlP5 cp5;

String user = "mario";
String pass = "morf";

void settings() {
  size(600, 300);
}

void setup() {
  cp5 = new ControlP5(this);
  declararInstancias();
  degradado();
}

void draw() {
  //Pijada del fondo
  background(colorFondo);
  colorFondo = lerpColor(c1, c2, n);
  n += (1-n)* 0.1; 
  switch(estado) {  
  case 1:         //-----------ESTADO 1---------------
    primerMenu();
    break;
  case 2:         //-----------ESTADO 2---------------
    segundoMenu();
    break;   
  case 3:         //-----------ESTADO 3---------------
    tercerMenu();
    break;
  }
}