String texto2;


String encriptar(String texto, int clave) {
  texto2 = "";
  for (int c=0; c<clave; c++) {
    for (int n=c; n<texto.length(); n=n+clave) {
      texto2 = texto2 + texto.charAt(n);
    }
  }   
  return texto2;
}


String desencriptar(String texto, int clave) {
  texto2 = "";
  float distanciaa = (texto.length()+1)/clave;
  int distancia = ceil(distanciaa);
  for (int c=0; c<distancia; c++) {
    for (int n=c; n<texto.length(); n=n+distancia) {
      texto2 = texto2 + texto.charAt(n);
    }
  }   
  return texto2;
}



String desencriptar_imagen(PImage imagen) {
  texto2 = "";
  for (int y=0; y<imagen.height; y++) {
    for (int x=0; x<imagen.width; x++) {
      color c = imagen.get(x, y);
      int ch = int((red(c)));
      if (ch != 225)texto2 = texto2 + char(ch);
      ch = int((green(c)));
      if (ch != 225)texto2 = texto2 + char(ch);
      ch = int((blue(c)));
      if (ch != 225)texto2 = texto2 + char(ch);
    }
  }
  return texto2;
}


int x = 0, y = 0;
void encriptar_imagen(String texto) {
  for (int n=0; n<texto.length(); n=n+3) {
    color c = color(texto.charAt(n), texto.charAt(n+1), texto.charAt(n+2));
    stroke(c);
    point(x, y);
    x++;
    if (x > xx-1) {
      y++;
      x = 0;
    }
  }
}

String cifradoCesar(String texto, int clave) {
  String resultado = "";

  for (int i=0; i<texto.length(); i++) {
    int numeroASCII = texto.charAt(i)+clave; 
    resultado += char(numeroASCII);
  }

  return resultado;
}