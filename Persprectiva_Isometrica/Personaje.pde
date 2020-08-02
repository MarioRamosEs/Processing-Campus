class Personaje {
  PImage tio;
  float x, y;
  int xcasilla,ycasilla;

  Personaje(float _x, float _y) {
    x = _x;
    y = _y;
    tio= loadImage("tio.png");
  }

  void actu() {
    if (keyPressed) {
      if (key == 'a') {
        x = x - (64/6);
        y = y - (64/12);
      }
      if (key == 'w') {
        x = x + (64/6);
        y = y - (64/12);
      }
      if (key == 's') {
        x = x - (64/6);
        y = y + (64/12);
      }
      if (key == 'd') {
        x = x + (64/6);
        y = y + (64/12);
      }
    }
    detectarcasilla();
    //println(xcasilla+" "+ycasilla);
  }
  
  void pintar(){
    image(tio, x, y);
  }

  void detectarcasilla() {
    int xclic = (int)x/64 - 6;
    int yclic = (int)y/32;
    int xclic2 = (int)x%64;
    int yclic2 = (int)y%32;

    xcasilla = yclic+xclic;
    ycasilla = yclic-xclic;

    color c = mousemap.get(xclic2, yclic2);
    switch(c) {
    case -65536: //Rojo
      xcasilla--;
      break;

    case -256: //Amarillo
      ycasilla--;
      break;

    case -16711936: //Verde
      ycasilla++;
      break;

    case -16776961: //Azul
      xcasilla++;
      break;
    }
  }
}

