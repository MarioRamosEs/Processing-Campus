class diagonalSystem{
  ArrayList diagonales;
  
  diagonalSystem(){
    diagonales = new ArrayList();
  }
  
  void actu(){
    for(int i = 0; i < diagonales.size(); i++){
      diagonal a = (diagonal) diagonales.get(i);
      a.actu();
      if(a.y > height){
        diagonales.remove(i);
         n--;
      }
    }
  }
  
  void anyadir(){
    color colors = color(random(225),random(225),random(225));
    diagonales.add(new diagonal(random(-200,width),random(-200,height),colors,random(10,50), random(0.5,1), random(50,225)));
  }
}
