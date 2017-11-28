class hormiga {
  private boolean viu = true;
  private PVector pos;
  private float vel=1;
  private int vidas;
  private int tipo;
  private PVector direccion;
  private PVector tamanyo;
  private PVector objectiu;
  private int puntos;

  hormiga(int tipo) {
    this.tipo = tipo;
    this.pos = pos;
    objectiu = new PVector (random (0, 500), random(0, 350));

    switch(tipo) {
    case 1:
      tamanyo = new PVector(30, 30);
      puntos = 1;
      vidas = 1;
      break;
    case 2:
      tamanyo = new PVector(50, 100);
      vidas = 2;
      puntos = 2;
      break;
    }
  }

  void establecerRumbo() {
    if (pos.x < objectiu.x) {
      direccion.x = 1;
    }
    if (pos.x > objectiu.x) {
      direccion.x = -1;
    }
    if (pos.y < objectiu.y) {
      direccion.y = 1;
    }
    if (pos.y > objectiu.y) {
      direccion.y = -1;
    }
  }

  void actualizar() {
    if (viu) {
      pos.add(direccion.mult(vel).copy()); 
      rect (pos.x, pos.y, tamanyo.x, tamanyo.y);
      establecerRumbo();
      if (dist(pos.x, pos.y, objectiu.x, objectiu.y)<5) {
        objectiu = new PVector (random (0, 500), random(0, 350));
      }
    }
  }

  public void click(int x, int y) {
    if (x >= pos.x && x <= tamanyo.x+pos.x && y >= pos.y && y <= tamanyo.y+pos.y) { 
      vidas --;
      if (vidas == 0) {
        viu = false;
      }
    }
  }

  public int getPuntos() {
    return puntos;
  }
}