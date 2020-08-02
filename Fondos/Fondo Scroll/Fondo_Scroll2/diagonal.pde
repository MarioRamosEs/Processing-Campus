class diagonal{
  color col;
  float anch, x, y, x2,y2,vel,largo;
  diagonal(float _x, float _y, color _col, float _anch, float _vel) {
    col = _col;
    anch = _anch;
    largo = random(50);
    x2 = _x + largo;
    y2 = _y + largo;
    x = _x;
    y = _y;
    vel = _vel;
  }

  void actu() {
    stroke(col);
    strokeWeight(anch);
    line(x, y, x2, y2);
    x = x + vel;
    y = y + vel;
    x2 = x2 + vel;
    y2 = y2 + vel;
  }
}

