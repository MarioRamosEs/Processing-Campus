int[][] generarMapaFondo() {
  int[][] mapa = new int[size][size];
  int temp;

  for (int y=0; y<size; y++) {
    for (int x=0; x<size; x++) {
      temp = (int)random(0, 4);
      if (temp > 2) mapa[y][x] = 1;
      else mapa[y][x] = 0;
    }
  }
  return mapa;
}

int[][] generarMapa() {
  int[][] mapa = new int[size][size];

  for (int y=0; y<size; y++) {
    for (int x=0; x<size; x++) {
      mapa[y][x] = 0;
    }
  }
  return mapa;
}

void pintarMapa(int[][] mapa, int posX) {
  for (int y=0; y<size; y++) {
    for (int x=0; x<size; x++) {
      switch(mapa[y][x]) {
      case 0:            //Si no soy mina o no he sido desvelado por el jugador
        fill(#8BC34A);
        rect(x*tamanyo+posX, y*tamanyo, tamanyo, tamanyo);
        break;
      case 1:            //Si soy una mina
        //fill(#F44336);
        fill(#8BC34A);
        rect(x*tamanyo+posX, y*tamanyo, tamanyo, tamanyo);
        image(mina, x*tamanyo+posX, y*tamanyo, tamanyo, tamanyo);
        break;
      case 2:           //Si he sido desvelado por el jugador
        fill(#2196F3);
        rect(x*tamanyo+posX, y*tamanyo, tamanyo, tamanyo);
        break;
      case 3:           //Si he marcado una mina
        fill(#8BC34A);
        rect(x*tamanyo+posX, y*tamanyo, tamanyo, tamanyo);
        image(bandera, x*tamanyo+posX, y*tamanyo, tamanyo, tamanyo);
        break;
      }
    }
  }
}

void pintarNumeros(int posX) {
  fill(0, 0, 255);
  textSize(10);
  for (int y=0; y<size; y++) {
    for (int x=0; x<size; x++) {
      text(minas[y][x], x*tamanyo+posX+7, y*tamanyo+15);
    }
  }
}

void pintarNumerosJug(int[][] mapa, int posX) {
  fill(0, 0, 255);
  textSize(10);
  int temp;
  for (int y=0; y<size; y++) {
    for (int x=0; x<size; x++) {
      if (mapaJugador[y][x] == 2) {
        //temp = buscar(mapaFondo,x,y);
        temp = minas[y][x];
        if (temp == -100) estado = -1;
        text(temp, x*tamanyo+posX+5, y*tamanyo+15);
      }
    }
  }
}

void pintarNMinas(PVector pos) {
  fill(255);
  textSize(13);
  text("nMinas: "+nMinas+" -  minasColocadas: "+minasColocadas, pos.x, pos.y);
}