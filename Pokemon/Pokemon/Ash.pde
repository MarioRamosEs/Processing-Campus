int t = millis();

void ActuAsh() {
  if (keyPressed) {
    if (key == 's') {
      direccion = 0;
      andando = true;
      tm.hacermovimiento(DOWN);
    }
    if (key == 'w') {
      direccion = 2;
      andando = true;
      tm.hacermovimiento(UP);
    }
    if (key == 'a') {
      direccion = 1;
      andando = true;
      tm.hacermovimiento(LEFT);
    }
    if (key == 'd') {
      direccion = 3;
      andando = true;
      tm.hacermovimiento(RIGHT);
    }
  }
  else {
    andando = false;
  }


  //Cambio Sprites------------
  if (tm.diferencia > 0 ) {
    // && t+500 < millis()
    if (CambioAsh < 2)CambioAsh++;
    else CambioAsh = 1;
    t = millis();
  }
  else { 
    CambioAsh = 0;
  }
  println(CambioAsh);
  image(imagenesash[direccion*3+CambioAsh], xAsh, yAsh);
}

