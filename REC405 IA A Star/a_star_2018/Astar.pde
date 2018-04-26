public class Astar {
  //private ArrayList<Pixel> pixelList = new ArrayList<Pixel>();
  private PriorityQueue pq;
  private Map map;

  Astar(Map map) {
    this.map = map;
  }

  public void analyzePixel(Pixel pixel) {
    ArrayList<Pixel> neighbors = map.getNeighbors(pixel);

    for (Pixel p : neighbors) { //Añadimos a pq los pixels de neighbors que no estén. Ya se ordenan solos al ser una PriorityQueue
      if (!pq.contains(p)) pq.add(p);
    }
  }

  public void init() {
    if (map.isaValidMap()) {
      map.calculateF(); //Precalcula todas las F      
    } else {
      println("Mapa no válido");
    }
  }
}