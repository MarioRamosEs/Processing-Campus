public class Astar {
  //Cola que se ordena automaticamente según el valor de 'compareTo' de los objetos que contiene.
  //https://docs.oracle.com/javase/7/docs/api/java/util/PriorityQueue.html
  private PriorityQueue pq = new PriorityQueue();
  
  private ArrayList<Pixel> blackList = new ArrayList<Pixel>(); //Nodos ya analizados.
  private Map map;
  private Pixel start, end; //Nodos inicio y final.

  Astar(Map map) {
    this.map = map;
  }

  public Pixel analyzePixel(Pixel pixel) { //Funcion recursiva que hace la búsqueda del nodo final.
    if (pixel.isEnd) {  //¡Si es el nodo final lo devolvemos!
      println("Solucion encontrada"); 
      return pixel;
    }

    //Si no es el nodo final, lo añadimos a la blackList y procedemos a añadir sus hijos a la PriorityQueue 'pq'.
    blackList.add(pixel);
    ArrayList<Pixel> neighbors = map.getNeighbors(pixel);
    for (Pixel p : neighbors) { //Añadimos a pq los pixels de neighbors que no estén. Ya se ordenan solos al ser una PriorityQueue.
      if (!pq.contains(p) && !blackList.contains(p)) {
        p.setFather(pixel); //Asignamos el nodo padre a cada nodo hijo para, una vez encontrado el nodo final, poder volver atrás recursivamente y encontrar el camino.
        //Calculos de F, G y H
        p.g = pixel.g + 1;
        p.h = p.calculateH(start.getPos());
        p.f = p.g + p.h;
        pq.add(p);
      }
    }

    if (pq.isEmpty()) { //Si la lista queda vacía, no existe un camino.
      return null;
    }

    //Cogemos el primer elemento de la Cola y llamamos a la funcion recursivamente
    Pixel p = (Pixel) pq.poll();
    return analyzePixel(p);
  }

  public void init() { //Inicio del algoritmo
    if (map.isaValidMap()) {
      start = map.getStart();
      end   = map.getEnd();   
      Pixel solution = analyzePixel(map.getStart());

      if (solution == null) println("Camino no encontrado");
      else solution.father.setPath(); //Hemos encontrado el nodo solución, procedemos a reconstruir el camino.
    } else {
      println("Mapa no válido");
    }
  }
}