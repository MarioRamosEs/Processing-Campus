class Tile{
  int[] valor;
  Tile(String[] value) {
    valor = new int[value.length];
    for(int x = 0; x < valor.length; x++){
      valor[x] = int(value[x]);
    }
  }
  

  /*int getValue() {
    return valor[];
  }*/

  void draw(float x, float y, TileContainer tc) {
    for(int xx = 0; xx < valor.length; xx++){
      tc.imagen(valor[xx], x, y-(xx*32));
    }
  }
}

