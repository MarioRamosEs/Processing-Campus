void Ash() {
  if (yAsh > 9 && yAsh < (16*alto)-16) {  
    //Ash---------------
    if (keyPressed) {
      xx = ((int)xAsh/16); 
      yy = ((int)yAsh/16);

      if (key == 's') {
        direccion = 0;
        andando = true;
        if (casas[(yy+1)*ancho+xx] == 0) yAsh = yAsh + 8;
      }
      if (key == 'w') {
        direccion = 2;
        andando = true;
        if (casas[(yy-1)*ancho+xx] == 0) yAsh = yAsh - 8;
      }
      if (key == 'a') {
        direccion = 1;
        andando = true;
        if (casas[yy*ancho+xx-1] == 0) xAsh = xAsh - 8;
      }
      if (key == 'd') {
        direccion = 3;
        andando = true;
        if (casas[yy*ancho+xx+1] == 0) xAsh = xAsh + 8;
      }
    }
    else {
      andando = false;
    }
  }

  if (andando == true) {
    if (CambioAsh < 2)CambioAsh++;
    else CambioAsh = 1;
  }
  else { 
    CambioAsh = 0;
  }
  image(imagenesash[direccion*3+CambioAsh], xAsh, yAsh);
}

