class Pixel {
  PVector pos;
  PVector size;
  int type;

  Pixel(PVector pos, PVector size, int type) {
    this.pos = pos;
    this.type = type;
    this.size = size;
  }

  void draw() {
    switch(type) {
    case 1: //Suelo
      fill(200, 200, 200);
      break;
    case 2: //Pared
      fill(255, 0, 0);
      break;
    case 3: //Inicio
      fill(0, 0, 255);
      break;
    case 4: //Fin
      fill(0, 255, 0);
      break;
    }

    rect(pos.x, pos.y, size.x, size.y);
  }

  public void setType(int type) {
    this.type = type;
  }
}