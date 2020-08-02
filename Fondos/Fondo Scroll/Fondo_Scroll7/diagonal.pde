class diagonal {
  color col;
  float anch, x, y, x2, y2, vel, largo, trans;
  float radio = 50;
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
  }

  void actu() {
    stroke(col+20, trans);
    fill(col);
    ellipse(x, y, 20, 20);
    radio = radio - 1;
    fill(col-20);
    ellipse(x, y, radio, radio);
    x = x + vel;
    y = y + vel;
    x2 = x2 + vel;
    y2 = y2 + vel;
  }
}

