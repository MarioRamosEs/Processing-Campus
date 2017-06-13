void pintarMapa(PVector pos) {
  for (int y = 0; y < mapSize.y; y++) {
    for (int x = 0; x < mapSize.x; x++) {
      switch(mapa[y][x]) {
        case 0:
        fill(pared);
        rect(pos.x+x*tileSize, pos.y+y*tileSize, tileSize, tileSize);
        break;
        case 1:
        fill(suelo);
        rect(pos.x+x*tileSize, pos.y+y*tileSize, tileSize, tileSize);
        fill(bola);
        ellipse(pos.x+x*tileSize, pos.y+y*tileSize, tileSize/3, tileSize/3);
        break;
        case 2:
        fill(suelo);
        rect(pos.x+x*tileSize, pos.y+y*tileSize, tileSize, tileSize);
        break;
        case 3:
        fill(decision);
        rect(pos.x+x*tileSize, pos.y+y*tileSize, tileSize, tileSize);
        fill(bola);
        ellipse(pos.x+x*tileSize, pos.y+y*tileSize, tileSize/3, tileSize/3);
        break;
        case 4:
        fill(decision);
        rect(pos.x+x*tileSize, pos.y+y*tileSize, tileSize, tileSize);
        break;
        case 5:
        fill(255);
        rect(pos.x+x*tileSize, pos.y+y*tileSize, tileSize, tileSize);
        break;
      }
    }
  }
}

void cambiarTile(int xTile, int yTile, int nTile){
  mapa[yTile][xTile] = nTile;
}

void guardarMapa(String nombreArchivo){
  String[] guardar = new String[(int)mapSize.y];

  for (int y = 0; y < (int)mapSize.y; y++) {
    guardar[y] = "";
    for (int x = 0; x < (int)mapSize.x; x++) {
      int valor = mapa[y][x];

      if (x != 0) guardar[y] += ","+valor;
      else guardar[y] += valor;

    }
  }
  saveStrings(nombreArchivo, guardar);
  println("Mapa guardado");
}

void cargarMapa(String nombreArchivo){
  String[] cargar = loadStrings(nombreArchivo);
  for (int y = 0; y < (int)mapSize.y; y++) {
    String[] fila = split(cargar[y], ',');
    for (int x = 0; x < (int)mapSize.x; x++) {
      mapa[y][x]= int(fila[x]);
    }
  }
  println("Mapa cargado");
}