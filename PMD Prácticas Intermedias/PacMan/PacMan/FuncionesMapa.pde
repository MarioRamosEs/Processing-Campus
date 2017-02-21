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

PVector tilePos(PVector pos){
  return new PVector(pos.x/tileSize, pos.y/tileSize);
}

int direccionDisponible(PVector posTile, int old_direccion){
  int rand;
  while (true) {
    rand = (int)random(1, 5);
    switch (rand) {
      case 1:
          if(mapa[(int)posTile.y-1][(int)posTile.x] != 0 && rand != direccionInversa(old_direccion)) return rand;
        break;  
        case 2:
          if(mapa[(int)posTile.y][(int)posTile.x+1] != 0 && rand != direccionInversa(old_direccion)) return rand;
        break;  
        case 3:
          if(mapa[(int)posTile.y+1][(int)posTile.x] != 0 && rand != direccionInversa(old_direccion)) return rand;
        break;  
        case 4:
          if(mapa[(int)posTile.y][(int)posTile.x-1] != 0 && rand != direccionInversa(old_direccion)) return rand;
        break;  
    }
  }
}

int direccionInversa(int old_direccion){
  if(old_direccion == 1) return 3;
  if(old_direccion == 2) return 4;
  if(old_direccion == 3) return 1;
  if(old_direccion == 4) return 2;
  return 0;
  /*switch (old_direccion) {
      case 1:
        return 3;
      break;  
      case 2:
        return 4;
      break;  
      case 3:
        return 1;
      break;  
      case 4:
        return 2;
      break; 
      default :
        return 0;
      break;  
    }*/
}