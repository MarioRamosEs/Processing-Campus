class estrella {
  float x, y, tam;
  estrella(float _x, float _y, float _tam) {
    x = _x;
    y = _y;
    tam = _tam;
  }

  void actu() {
    fill(225);
    ellipse(x, y, tam, tam);
    x = x + tam/2;
    y = y + tam/2;
  }

  boolean estado() { //false -> fuera del mapa
    if (x > width || y > height) return false;
    return true;
  }
}






class estrellaSystem {
  ArrayList estrellas;
  estrellaSystem() {
    estrellas = new ArrayList();
  }

  void actu() {
    for (int num = 0; num < estrellas.size(); num++) {
      estrella a = (estrella) estrellas.get(num);
      a.actu();
      if (a.estado() == false) estrellas.remove(num);
    }
    anyadir();
  }

  void anyadir() {
    estrellas.add(new estrella(random(-width), random(-height), random(0.2, 3)));
  }
}

