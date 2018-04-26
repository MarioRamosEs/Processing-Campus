import java.util.Queue;
import java.util.PriorityQueue;

public class Pixel implements Comparable<Pixel> {
  private PVector pos;
  private PVector size;
  private int type;
  private float dist; //Guarda la distancia con el nodo final

  public Integer f, g, h;
  
  //Implementacion
  @Override 
  int compareTo(Pixel other) {
    return Integer.compare(f, other.f); // or faster: 'return num - other.num;'
  }

  Pixel(PVector pos, PVector size, int type) {
    this.pos = pos;
    this.type = type;
    this.size = size;
  }

  void draw() {
    switch(type) {
    case 1: //Suelo
      fill(200, 200, 200);
      break;
    case 2: //Pared
      fill(255, 0, 0);
      break;
    case 3: //Inicio
      fill(0, 0, 255);
      break;
    case 4: //Fin
      fill(0, 255, 0);
      break;
    }

    rect(pos.x, pos.y, size.x, size.y);
  }

  public void setType(int type) {
    this.type = type;
  }

  public void setDist(float dist) {
    this.dist = dist;
  }
}