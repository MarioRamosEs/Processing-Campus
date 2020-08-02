class diagonalSystem {
  ArrayList diagonales;

  diagonalSystem() {
    diagonales = new ArrayList();
  }

  void actu() {
    for (int i = 0; i < diagonales.size(); i++) {
      diagonal a = (diagonal) diagonales.get(i);
      a.actu();
      for (int ii = 0; ii < diagonales.size(); ii++) {
        diagonal aa = (diagonal) diagonales.get(ii);
        if (dist(a.x, a.y, aa.x, aa.y) < aa.radio && (a.tocado == false || aa.tocado == false)) {
          a.radio = 100;
          aa.radio = 100;
          a.tocado = true;
          aa.tocado = true;
        }
      }
      if (a.muerto == true) {
        diagonales.remove(i);
        n--;
      }
    }
  }

  void anyadir() {
    color colors = color(random(225), random(225), random(225));
    diagonales.add(new diagonal(random(-200, width), random(-200, height), colors, random(10, 50), random(0.5, 1), random(50, 225)));
  }
}

