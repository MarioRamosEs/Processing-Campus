class TileMap {
  float scrollx = 0, scrolly = 0;
  float diferencia = -0.1;
  int dir;

  PImage suelo, casa;
  TriggerSystem ts;
  PImage imagenessuelo[];
  PImage imagenescasas[];
  int [] mapa;
  int [] casas;
  int pintar;
  int ancho = 40;
  int alto = 40;
  int estado = 1;
  int sprite = 1;
  int sprite2 = 0;
  String s;
  String Txt[];

  TileMap() {
    mapa = new int[ancho*alto];
    ts = new TriggerSystem();
    casas = new int[ancho*alto];
    suelo = loadImage("Suelo.png");
    casa = loadImage("Casas.png");
    imagenessuelo = hImageSplit(suelo, 32, 32);
    imagenescasas = hImageSplit(casa, 32, 32);
    cargarmapa(1);
  }

  void actu() {
    for (int y=0;y<alto;y++) {
      for (int x=0;x<ancho;x++) {
        pintar = mapa[y*ancho+x];
        image(imagenessuelo[pintar], x*16+scrollx*16, y*16+scrolly*16, 16, 16);

        pintar = casas[y*ancho+x];
        image(imagenescasas[pintar], x*16+scrollx*16, y*16+scrolly*16, 16, 16);
      }
    }
    ts.actu(xAsh, yAsh);
    if (ts.activo == true) {
      int esta2[] = ts.comprobar();
      switch(esta2[0]) {
      case 1:
        if (esta2[2] != 0) xAsh = esta2[2]*16;
        if (esta2[3] != 0) yAsh = esta2[3]*16;
        cargarmapa(esta2[1]);
        break;
      }
      ts.activo = false;
    }
    hacermovimiento2(dir);
  }

  void cargarmapa(int modelo) {
    String suelo2 = "";
    String casas2 = "";
    String triggers2 = "";
    Txt = loadStrings("Mapa"+modelo+".txt");

    ts.borrar();

    for (int i = 0; i<Txt.length; i++) {
      if (i < 40) suelo2 = suelo2 + Txt[i];
      if (i > 40 && i < 81) casas2 = casas2 + Txt[i];
      if (i > 81) triggers2 = triggers2 + Txt[i];
    }
    for (int i = 0; i<suelo2.length(); i++) {
      mapa = int(split(suelo2, ','));
    }

    for (int i = 0; i<casas2.length(); i++) {
      casas = int(split(casas2, ','));
    }

    for (int i = 0; i<triggers2.length(); i++) {
      String[] lol = split(triggers2, ',');
      int[] po = new int [6];
      po[0] = Integer.parseInt(lol[0]);
      po[1] = Integer.parseInt(lol[1]);
      po[2] = Integer.parseInt(lol[2]);
      po[3] = Integer.parseInt(lol[3]);
      po[4] = Integer.parseInt(lol[4]);
      po[5] = Integer.parseInt(lol[5]);

      ts.anyadir(po[0], po[1], po[2], po[3], po[4], po[5]);
    }
  }

  void hacermovimiento(int direccion) {
    int xreal = (int)-scrollx+8;
    int yreal = (int)-scrolly+6;
    int indice = xreal+yreal*ancho;
    dir = direccion;

    switch(direccion) {
    case UP:
      if (casas[indice-ancho] == 0 && diferencia < 0) {
        diferencia = 1;
        t = millis();
      }
      break;

    case DOWN:
      if (casas[indice+ancho] == 0 && diferencia < 0) {
        diferencia = 1;
        t = millis();
      }
      break;

    case LEFT:
      if (casas[indice-1] == 0 && diferencia < 0) {
        diferencia = 1;
        t = millis();
      }
      break;

    case RIGHT:
      if (casas[indice+1] == 0 && diferencia < 0) {
        diferencia = 1;
        t = millis();
      }
      break;
    }
    //println(xreal+" "+yreal);
  }


  void hacermovimiento2(int dir) {
    switch(dir) {
    case UP:
      if (diferencia > 0) {
        scrolly = scrolly + 0.2;
        diferencia = diferencia - 0.2;
      }
      break;
    case DOWN:
      if (diferencia > 0) {
        scrolly = scrolly - 0.2;
        diferencia = diferencia - 0.2;
      }
      break;
    case LEFT:
      if (diferencia > 0) {
        scrollx = scrollx + 0.2;
        diferencia = diferencia - 0.2;
      }
      break;
    case RIGHT:
      if (diferencia > 0) {
        scrollx = scrollx - 0.2;
        diferencia = diferencia - 0.2;
      }
      break;
    }
  }
}

