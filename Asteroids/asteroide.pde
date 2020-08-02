class asteroide {
  PImage[] roca;
  float ra, xx, yy, tiempo, rad, distancia;
  int estado, modelo, mod;
  boolean vivo;
  boolean vv = true;
  float distx = random (0, 800);
  float disty = random (0, 600);
  float distr = random (0, 360);
  float velo, radio, trans;
  float tiempo2 = millis();

  asteroide (int modelo, int e, float x, float y) {
    xx = x;
    yy = y;
    vivo = false;
    tiempo = millis();
    estado = e;
    velo = (float)1/3;
    tipo(modelo);
    roca = new PImage[3];
    tiempo2 = millis();
    roca[0] = loadImage("roca_"+modelo+"_0.png");
    roca[1] = loadImage("roca_"+modelo+"_1.png");
    roca[2] = loadImage("roca_"+modelo+"_2.png");
  }

  void tipo(int m) {
    mod = m;
  }

  int tipo2 () {
    return mod;
  }

  void actu(float xbala, float ybala, float xnave, float ynave) {
    if (dist(xbala, ybala, xx, yy) < rad && vivo == true) {
      estado++;
      disparos++;
      vivo = false;
      tiempo = millis();
      radio = rad-10;
      trans = 225;
      vv = false;
      impacto.trigger();

      snivel++;
      if (snivel > 3) {
        snivel = 0;
        nivel++;
      }
    }

    fill(colors, trans);
    ellipse(xx, yy, radio, radio);
    radio = radio + 2;
    if (trans != 0) trans = trans - 5;

    imageMode(CENTER);
    pushMatrix();
    rotate(radians(ra));
    popMatrix();

    if (tiempo+1000 < millis()) {
      vivo = true;
      tiempo = millis();
    }

    if (estado == 0) {
      rad = 60;
      image(roca[0], xx, yy);
    }
    if (estado == 1) {
      image(roca[1], xx, yy);
      rad = 30;
    }
    if (estado == 2) {
      rad = 15;
      image(roca[2], xx, yy);
    }

    movimiento();

    if (dist(xx, yy, xnave, ynave) < rad && tiempo2+2000 < millis()) {
      tiempo2 = millis();
      vidas--;
      impacto.trigger();
      tint(225, 0, 0);
      tiempo3 = millis();
    }
  }

  void movimiento() {
    ra = random(0, 360);
    if (distx > xx) xx = xx + velo;
    if (distx < xx) xx = xx - velo; 
    if (disty > yy) yy = yy + velo;
    if (disty < yy) yy = yy - velo;
    distancia = dist (xx, yy, distx, disty);
    if (distancia < velo+4) {
      distx = random (0, 800);
      disty = random (0, 600);
    }
  }

  boolean dividir() {
    boolean vv2 = vv;
    vv = true;
    return vv2;
  }
}

