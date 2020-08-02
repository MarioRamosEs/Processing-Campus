class diagonalSystem {
  ArrayList diagonales;

  diagonalSystem() {
    diagonales = new ArrayList();
  }

  void actu() {
    for (int i = 0; i < diagonales.size(); i++) {
      diagonal a = (diagonal) diagonales.get(i);
      a.actu();
      for (int ii = i+1; ii < diagonales.size(); ii++) {
        diagonal aa = (diagonal) diagonales.get(ii);
        if (dist(a.x, a.y, aa.x, aa.y) < a.anch/2+aa.anch/2) {
          a.velx = a.velx*-1;
          aa.velx = aa.velx*-1;
          a.vely = a.vely*-1;
          aa.vely = aa.vely*-1;
        }
      }
    }
  }

  void anyadir() {
    color colors = color(random(225), random(225), random(225));
    diagonales.add(new diagonal(random(100, width), random(100, height), colors, random(10, 30), random(0.5, 2), random(50, 225), random(0.5, 2)));
  }
}

