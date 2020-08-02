class TileContainer {
  PImage recorte[][];
  int xx, yy;
  TileContainer(PImage imagen, int ancho, int alto) {
    recorte = hImageSplit(imagen, ancho, alto);
  }

  void imagen(int t, float x, float y) { //numero del tile
    xx = t%(recorte.length); 
    yy = t/(recorte.length);
    //println(xx+"   "+yy);
    image(recorte[xx][yy], x, y);
  }



  //_________________________________FUNCIONES DE RECORTE  
  PImage[][] hImageSplit(PImage source, int width, int height) {
    PImage[][] resultado = new PImage[source.width/width][source.height/height];
    for (int y = 0; y < source.width/width-1; y++) {
      resultado[y] = ImageSplit(source, y, 0, (int)(source.height/height)-1, width, height);
    }
    return resultado;
  }

  PImage[] ImageSplit(PImage source, int column, int startTile, int endTile, int width, int height) {
    PImage[] resoult = new PImage[endTile-startTile+1];
    for (int x = startTile; x <= endTile; x++) {
      resoult[x-startTile] = createImage(width, height, ARGB);
      resoult[x-startTile].copy(source, column*width, x*height, width, height, 0, 0, width, height);
    }
    return resoult;
  }
}

