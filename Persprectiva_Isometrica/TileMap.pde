class TileMap {
  Tile[][] mapa;
  int filass, columnass;
  TileContainer tl;
  int xx,yy;
  int offSetY = 32;
  int offSetX;

  TileMap(int modelo) {
    String[] filas = loadStrings("Mapa"+modelo+".txt");
    
    PImage imagenes = loadImage("tileset.png");
    tl = new TileContainer(imagenes, 64, 64);

    mapa = new Tile[split(filas[0], ",").length][filas.length];

    for (int y = 0; y < filas.length; y++) {
      String[] columnas = split(filas[y], ",");
      for (int x = 0; x < columnas.length; x++) 
        mapa[x][y] = new Tile(split(columnas[x],"|"));
        
      filass = filas.length;
      columnass = columnas.length;
      
      offSetX = 32*(mapa[0].length);
    }
  }

  void pintar() {
    for (int y = 0; y < mapa[0].length; y++) {     
      for (int x = 0; x < mapa.length; x++) {
        yy = y*16+x*16;
        xx = -y*32+x*32;
        
        mapa[x][y].draw(xx+offSetX, yy-offSetY, tl);
        if(tio.xcasilla == x && tio.ycasilla+2 == y) tio.pintar();
      }
    }
  }
}

