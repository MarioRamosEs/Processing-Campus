class diagonal {
  color col;
  float anch, x, y, x2, y2, vel, largo, trans;
  float radio = 0, t = millis();
  float distx, disty;
  boolean tocado = false, muerto = false;
  diagonal(float _x, float _y, color _col, float _anch, float _vel, float _trans) {
    col = _col;
    anch = _anch;
    largo = random(50);
    x2 = _x + largo;
    y2 = _y + largo;
    x = _x;
    y = _y;
    vel = _vel;
    trans = _trans;
    distx = random(0, width);
    disty = random(0, height);
  }

  void actu() {
    stroke(col+20, trans);
    fill(col);
    ellipse(x, y, 20, 20);
    if (radio > 0)radio = radio - 1;
    fill(col-20, 20);
    ellipse(x, y, radio, radio);

    if (distx > x) x = x + 2;
    if (distx < x) x = x - 2; 
    if (disty > y) y = y + 2;
    if (disty < y) y = y - 2; 
    if (dist(x, y, distx, disty) < 4) {
      distx = random (0, width);
      disty = random (0, height);
    }

    if (dist(mouseX, mouseY, x, y) < 20 && mousePressed == true) radio = 100;
    if (radio < 20 && tocado == true) {
      muerto = true;
    }
  }
}

