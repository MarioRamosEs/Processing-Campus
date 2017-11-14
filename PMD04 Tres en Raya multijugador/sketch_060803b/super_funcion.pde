//Función que comprueba si hay algún ganador mirando el estado actual del tablero.

int comprobarGanador() {
  //linea -- player 1
  if (tab[0]==1 && tab[1]==1 && tab[2]==1) return 1;
  if (tab[3]==1 && tab[4]==1 && tab[5]==1) return 1;
  if (tab[6]==1 && tab[7]==1 && tab[8]==1) return 1;
  //linea | player 1
  if (tab[0]==1 && tab[3]==1 && tab[6]==1) return 1;
  if (tab[1]==1 && tab[4]==1 && tab[7]==1) return 1;
  if (tab[2]==1 && tab[5]==1 && tab[8]==1) return 1;
  //linea/ player 1
  if (tab[2]==1 && tab[4]==1 && tab[6]==1) return 1;
  //linea \ player 1
  if (tab[0]==1 && tab[4]==1 && tab[8]==1) return 1;

  //linea -- player 2
  if (tab[0]==2 && tab[1]==2 && tab[2]==2) return 2;
  if (tab[3]==2 && tab[4]==2 && tab[5]==2) return 2;
  if (tab[6]==2 && tab[7]==2 && tab[8]==2) return 2;
  //linea | player 2
  if (tab[0]==2 && tab[3]==2 && tab[6]==2) return 2;
  if (tab[1]==2 && tab[4]==2 && tab[7]==2) return 2;
  if (tab[2]==2 && tab[5]==2 && tab[8]==2) return 2;
  //linea/ player 2
  if (tab[2]==2 && tab[4]==2 && tab[6]==2) return 2;
  //linea \ player 2
  if (tab[0]==2 && tab[4]==2 && tab[8]==2) return 2;
 
  return 0;
}