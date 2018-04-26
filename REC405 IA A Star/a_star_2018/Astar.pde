public class Astar {
  private ArrayList<Pixel> blackList = new ArrayList<Pixel>();
  private PriorityQueue pq = new PriorityQueue();
  private Map map;

  Astar(Map map) {
    this.map = map;
  }

  public void analyzePixel(Pixel pixel) {
    
    
    
    if(pixel.isEnd){
     println("Solucion encontrada"); 
     return;
    }
    
    blackList.add(pixel);
    ArrayList<Pixel> neighbors = map.getNeighbors(pixel);
    for (Pixel p : neighbors) { //Añadimos a pq los pixels de neighbors que no estén. Ya se ordenan solos al ser una PriorityQueue
      if (!pq.contains(p) && !blackList.contains(p)){
        println(p.getPos());
        p.father = p;
        p.g = pixel.g + 1;
        p.f = p.g + p.h;
        pq.add(p);
      }
    }
    
    //Cogemos el primer elemento de la Cola y lo llamamos recursivamente
    Pixel p = (Pixel) pq.poll();
    analyzePixel(p);
  }

  public void init() {
    if (map.isaValidMap()) {
      map.calculateH(); //Precalcula todas las H    
      analyzePixel(map.getStart());
    } else {
      println("Mapa no válido");
    }
  }
}