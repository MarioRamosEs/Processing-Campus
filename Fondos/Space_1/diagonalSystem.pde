class diagonalSystem {
  ArrayList diagonales;

  diagonalSystem() {
    diagonales = new ArrayList();
  }

  void actu() {
    for (int i = 0; i < diagonales.size(); i++) {
      diagonal a = (diagonal) diagonales.get(i);
      a.actu();
      if (a.z2 > 200) {
        diagonales.remove(i);
        n--;
      }
    }
  }

  void anyadir() {
    color colors = color(random(225), random(225), random(225));
    diagonales.add(new diagonal(random(0, width), random(0, height), colors, random(10, 50), 1.5, random(50, 225), random(-90, -250)));
  }
}

