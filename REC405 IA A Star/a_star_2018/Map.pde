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
  
  public boolean issValidMap(){
  }
}