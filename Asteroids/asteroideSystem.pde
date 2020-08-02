class asteroideSystem {
  ArrayList asteroides; 
  int models;

  asteroideSystem() {
    asteroides = new ArrayList();
  }

  void anyadir(int tipo, int estado) {
    asteroides.add(new asteroide(tipo, estado, random(800), random(600)));
  }

  void partir(int tipo, int estado, float x, float y) {
    asteroides.add(new asteroide(tipo, estado, x, y));
  }

  void actu(float xb, float yb, float x, float y) {
    for (int num = 0; num < asteroides.size(); num++) {
      asteroide a = (asteroide) asteroides.get(num);
      a.actu(xb, yb, x, y);
      if (a.dividir() == false) as.partir(a.tipo2(), a.estado, a.xx, a.yy);
      if (a.estado == 3) asteroides.remove(num);
    }
    if (asteroides.size() < 3) {
      models = (int)random(1, 4);
      if (models == 4)models = 1;
      as.partir(models, 0, -100, random(600));
    }
  }
}

