void juego() {
  background(trt2, 0, trt);
  trt = trt + lcs;
  if (trt > 60) lcs = -0.05;
  if (trt < 10) lcs = 0.05;
  trt2 = trt;

  ybala = ybala - 30;
  actu_edgars();
  image (nave, mouseX, 750);
  image (bala, xbala, ybala);
  if (mousePressed == true) {
    xbala = mouseX;
    ybala = 750 - bala.height;
    
    
  }

  if (cambio == true) {
    if (millis()-spera > 1000) {
      tint(225, 225, 225);
      cambio = false;
    }
  }

  if (muertos == ultimo + 3) {
    ultimo = muertos;
    ultimolv = n;
    n = n +1;
    rota = rota + 0.0005;
    qwerty = qwerty - 5;
  }

  if (vidas < 0) game_over();

  String nov = "Nivel: "+n+"   Muertos: "+muertos+"   Vidas: "+vidas;
  textFont(Future, 20);
  fill(225);
  text(nov, 10, 20);

  if (keyPressed) { 
    if (key == BACKSPACE) {
      estado = 5;
    }
  }
}

