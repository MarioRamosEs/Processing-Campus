int buscar(int[][] mapa, int x, int y) {
  int contador = 0;

  if (mapa[y][x] == 1) return -100;  //Si soy una mina
  else {
    for (int yy = y-1; yy<y+2; yy++) {
      for (int xx = x-1; xx<x+2; xx++) {
        if (xx>=0 && xx<size && yy>=0 && yy<size) {
          if (mapa[yy][xx] == 1) contador++;
        }
      }
    }

    return contador;
  }
}

int[][] buscarMinas(int[][] mapa) {
  int[][] minas = new int[size][size];

  for (int y=0; y<size; y++) {
    for (int x=0; x<size; x++) {
      int temp = buscar(mapa, x, y);
      if (temp == -100) nMinas++;
      minas[y][x] = temp;
    }
  }
  return minas;
}

boolean heGanado(int[][] mapaJugador, int[][] mapaFondo) {
  int minasEncontradas = 0;
  for (int y=0; y<size; y++) {
    for (int x=0; x<size; x++) {
      if (mapaJugador[y][x] == 3 && mapaFondo[y][x] == 1) minasEncontradas++;
    }
  }
  if (minasEncontradas == nMinas && nMinas == minasColocadas) return true;
  else return false;
}

void explotar(int x, int y) {
  if (buscar(mapaFondo, x, y) == 0 && mapaJugador[y][x] != 2) {
    mapaJugador[y][x] = 2;

    for (int yy = y-1; yy<y+2; yy++) {
      for (int xx = x-1; xx<x+2; xx++) {
        if (xx>=0 && xx<size && yy>=0 && yy<size) {
          if (buscar(mapaFondo, xx, yy) == 0) explotar(xx, yy);
        }
      }
    }
  } else {
    mapaJugador[y][x] = 2;
  }
}