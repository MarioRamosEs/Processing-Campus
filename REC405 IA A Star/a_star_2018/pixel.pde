import java.util.Queue;
import java.util.PriorityQueue;

public class Pixel implements Comparable<Pixel> {
  private PVector pos;
  private PVector posScreen;
  private PVector size;
  private int type;

  private float dist; //Guarda la distancia con el nodo final
  public Integer f = 0, g = 0, h = 0;

  private Pixel father = null;

  boolean isStart = false;
  boolean isEnd = false;

  //Implementacion
  @Override 
    int compareTo(Pixel other) {
    return Integer.compare(f, other.f); // or faster: 'return num - other.num;'
  }

  Pixel(PVector pos, PVector posScreen, PVector size, int type) {
    this.pos = pos;
    this.posScreen = posScreen;
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
    case 5: //Solucion
      fill(239, 127, 26);
      break;
    }

    rect(posScreen.x, posScreen.y, size.x, size.y);
    fill(0);
    text("G: " + g, posScreen.x+5, posScreen.y+10);
    text("H: " + h, posScreen.x+5, posScreen.y+20);
    text("F: " + f, posScreen.x+5, posScreen.y+30);
  }
  
  public void calculateH(PVector start, PVector end){
    if(type == 1 || type == 2 || type == 3){                //Solo calculamos la h si somos suelo inicio o final
      h = Math.round(dist(pos.x, pos.y, end.x, end.y));     //Calculo heurística
    }
  }

  //Getters y Setters
  public void setType(int type) {
    switch(type) {
    case 3:
      isStart = true;
      isEnd = false;
      break;
    case 4:
      isStart = false;
      isEnd = true;
      break;
    default:
      isStart = false;
      isEnd = false;
      break;
    }
    this.type = type;
  }

  public void setDist(float dist) {
    this.dist = dist;
  }

  public void setFather(Pixel father) {
    this.father = father;
  }

  public PVector getPos() { 
    return pos;
  }

  public int getType() { 
    return type;
  }
}