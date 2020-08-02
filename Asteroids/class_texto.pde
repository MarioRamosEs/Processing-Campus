class cajatexto {
  int x, y, ancho;
  String texto;
  boolean seleccionado;
  int lmillis;
  
  cajatexto(int x_, int y_, int ancho_) {
    texto = "";
    seleccionado = false;
    lmillis = millis();
    x = x_;
    y = y_;
    ancho = ancho_;
  }
  
  void pintar() {
    stroke(0);
    //fill(255);
    //rect(x, y, ancho, 15);
    
    
    /*if(seleccionado && millis()-lmillis > 500) {
      stroke(0,120,255);
      int num = 0;
      
      if (texto.length() > 18) {
        String tmp = texto.substring(texto.length()-18, texto.length());
        for (int a = 0; a<18; a++) num+=textWidth(tmp.charAt(a)); 
        num+=5;
      } else {
        for (int a = 0; a<texto.length(); a++) num+=textWidth(texto.charAt(a)); 
        num+=5;
      }
      
      line(x+num,y+2, x+num, y+13);
      if(millis()-lmillis > 1000) 
        lmillis = millis();
    }
    //if (seleccionado) fill(0,120,255); else fill(0);*/
    textAlign(LEFT,TOP);
    
    String textoimp;
    
    if (texto.length() > 18) 
      textoimp = texto.substring(texto.length()-18, texto.length());
    else
      textoimp = texto;
    
    
    text(textoimp, x+5, y+2);
    seleccionado = true;
  }
  
  String devolver() {
    return texto;
  }
  
  void keyreleased() {
    if (seleccionado) {
      if (keyCode != BACKSPACE) {
        texto += str(key);
      } else {
        if(texto.length()>0)texto = texto.substring(0,texto.length()-1);
      }
    }
  }
}
