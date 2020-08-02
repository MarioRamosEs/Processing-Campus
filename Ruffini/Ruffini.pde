float Version = 1.1;
import co.jimezam.util.Dialogo;
String polinomio;
String divisor;
int grado;
String[] monomios;
int[] primera_fila;
int[] segunda_fila;
int[] tercera_fila;

void setup() {
  size(600, 300);
  strokeWeight(2);
  polinomio = Dialogo.preguntar("Ruffini by: Mario", "Polinomio: ", Dialogo.TIPO_PREGUNTA);
  divisor = Dialogo.preguntar("Ruffini by: Mario", "Divisor: ", Dialogo.TIPO_PREGUNTA);
  grado = Integer.parseInt(Dialogo.preguntar("Ruffini by: Mario", "Grado: ", Dialogo.TIPO_PREGUNTA));
  primera_fila = new int[grado+1];
  segunda_fila = new int[grado+1];
  tercera_fila = new int[grado+1];
  //----------------------------
  background(190);
  ruffini();
}

void ruffini() {
  line(10, 150, width, 150);
  line(50, 10, 50, 180);
  
  monomios = split(polinomio, " ");
  for(int i=0; i<grado+1; i++){
    String[] temp = split(monomios[i], "x");
    primera_fila[i] = Integer.parseInt(temp[0]);
    //println(primera_fila[i]);
  }
  
  String[] temp = split(divisor," ");
  int multiplicador = Integer.parseInt(temp[1])*-1;
  
  segunda_fila[0] = 0;
  tercera_fila[0] = primera_fila[0] + segunda_fila[0];
  for(int i=1; i<grado+1; i++){
    segunda_fila[i] = tercera_fila[i-1]*multiplicador;
    tercera_fila[i] = primera_fila[i] + segunda_fila[i];
  }
  
  pintar_fila(primera_fila, 30);
  pintar_fila(segunda_fila, 140);
  pintar_fila(tercera_fila, 180);
  text(multiplicador, 25, 140);
  
  String resultado = "P(x): ";
  for(int i=0; i<grado-1; i++){
    resultado = resultado+tercera_fila[i]+"x"+(grado-i-1)+" ";
  }
  resultado = resultado+tercera_fila[grado-1];
  text(resultado, 60, 230);
  
  text("R(x): "+tercera_fila[grado], 60, 270);
}

void pintar_fila(int[] fila, int altura){
  fill(0);
  textSize(20);
  int x = 60;
  for(int i=0; i<fila.length; i++){
    text(fila[i], x, altura);
    x = x+60;
  }
}
