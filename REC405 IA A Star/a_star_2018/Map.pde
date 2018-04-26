public class Map {
  public Pixel[][] pixelMap = new Pixel[30][30];
  public PVector pixelSize = new PVector(20, 20);

  Map() {
    for (int y = 0; y < pixelMap.length; ++y) {
      for (int x = 0; x < pixelMap[0].length; ++x) {
        PVector pos = new PVector(x*pixelSize.x, y*pixelSize.y);
        pixelMap[y][x] = new Pixel(pos, pixelSize, 1);
      }
    }
  }

  public void draw() {
    for (int y = 0; y < pixelMap.length; ++y) {
      for (int x = 0; x < pixelMap[0].length; ++x) {
        pixelMap[y][x].draw();
      }
    }
  }

  public ArrayList<Pixel> getNeighbors(Pixel pixel) {
    ArrayList<Pixel> neighbors = new ArrayList<Pixel>();
    PVector posPixel = pixel.getPos();
    Pixel pixelTemp;

    if (posPixel.x>0) {
      pixelTemp = pixelMap[(int)posPixel.y][(int)posPixel.x-1];
      if (pixelTemp.getType() != 2) neighbors.add(pixelTemp);
    }
    if (posPixel.x<pixelSize.x-1) {
      pixelTemp = pixelMap[(int)posPixel.y][(int)posPixel.x+1];
      if (pixelTemp.getType() != 2) neighbors.add(pixelTemp);
    }
    if (posPixel.y>0) {   
      pixelTemp = pixelMap[(int)posPixel.y-1][(int)posPixel.x];
      if (pixelTemp.getType() != 2) neighbors.add(pixelTemp);
    }
    if (posPixel.y<pixelSize.y-1) { 
      pixelTemp = pixelMap[(int)posPixel.y+1][(int)posPixel.x];
      if (pixelTemp.getType() != 2) neighbors.add(pixelTemp);
    }

    return neighbors;
  }

  public boolean isaValidMap() {
    //todo
    return true;
  }

  public void calculateF() {
    Pixel start = map.getStart();
    Pixel end = map.getEnd();

    for (Pixel[] pp : pixelMap) {
      for (Pixel p : pp) {
        p.calculateF(start.getPos(), end.getPos());
      }
    }
  }

  public Pixel getStart() {
    //Recorrer el mapa
    for (Pixel[] pp : pixelMap) {
      for (Pixel p : pp) {
        if (p.isStart) return p;
      }
    }
    println("Inicio no encontrado");
    return null;
  }

  public Pixel getEnd() {
    //Recorrer el mapa
    for (Pixel[] pp : pixelMap) {
      for (Pixel p : pp) {
        if (p.isEnd) return p;
      }
    }
    println("Final no encontrado");
    return null;
  }
}