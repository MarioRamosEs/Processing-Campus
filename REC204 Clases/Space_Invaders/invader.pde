class invader {
  boolean muerto;
  PImage bixo[];
  float velo, xbixo, ybixo, espera, disparox, disparoy, nn, rnd, dar;
  int img;
  PImage disparoinvader;

  invader(int modelo) {
    espera = millis();
    xbixo = random(0, 800);
    ybixo = random(0, 400);
    muerto = false;
    String a = modelo+"a.png";
    String b = modelo+"b.png";
    bixo = new PImage[2];
    bixo[0] = loadImage(a);
    bixo[1] = loadImage(b);
    disparoinvader = loadImage("tiroinvader.png"); //modificar imagen !!!!!!!!!!!
  }

  void actu() {
    if (!muerto) {
      disparo();
      xbixo = xbixo + nvl;
      if (millis() - espera > qwerty) {
        img = img + 1;
        espera = millis();
        if (img > 1) img = 0;
      }
      imageMode(CENTER);
      image(disparoinvader, disparox, disparoy);
      image(bixo[img], xbixo, ybixo);
      xbixo = xbixo + n*0.30;
      if (xbixo > width) {
        xbixo = 0;
        ybixo = ybixo + 100;
      }
      dar = dist(xbixo, ybixo, xbala, ybala);
      if (dar < 50) {
        muerto = true;
        rnd = millis();
        muertos = muertos + 1;
        xbala = 1300;
      }

      float parbal = dist(disparox, disparoy, xbala, ybala);
      if (parbal < 15) {
        disparox = 1300;
        xbala = 1300;
      }

      if (ybixo > 700) {
        vidas = vidas - 1;
        tint(225, 0, 0);
        xbixo = random(-600, -20);
        ybixo = random(0, 500);
        cambio = true;
        spera = millis();
      }
    }
    if (muerto == true) {
      if (millis()-rnd > 2000) {
        xbixo = random(-600, -20);
        ybixo = random(0, 400);
        muerto = false;
      }
    }
  }

  void disparo() {
    nn = n*0.5;
    disparoy = disparoy + nn;

    float zxcv = random (0, 10);
    if (zxcv < 0.02) {
      disparox = xbixo;
      disparoy = ybixo;
    }

    float vcxz = dist(disparox, disparoy, mouseX, 750);
    if (vcxz < 40) {
      vidas = vidas - 1;
      disparox = 1300;
      tint(225, 0, 0);
      cambio = true;
      spera = millis();
    }
  }
}

