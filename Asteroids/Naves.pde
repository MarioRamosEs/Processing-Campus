void nave1() {
  background(0);
  es.actu();
  as.actu(xb, yb, x, y);

  if (vidas < 0) {
    fill(225);
    text("Escribe  tu  nombre  y  pulsa  Enter", 100, 90);
    text("Disparos  acertados  :  "+disparos,200,500);
    texto.pintar();

    if (nombre != null) {
      println(nombre);
      //if (dbconnection.connect()) dbconnection.execute( "INSERT INTO asteroids(nombre, disparos) VALUES ('"+nombre+"', "+disparos+")");
      //mr2 = true;
      menu = 5;
    }
    //if (mr2 = true)menu = 5;
  }else{

  if (tiempo3+1500 < millis() && neon == false) tint(225);

  if (neon == true) {
    fill(colors);
  } 
  else {
    colors = color (225, 225, 225);
    fill(225);
  }

  text("Nivel: "+nivel, 20, 55);
  text("Vidas: ", 566, 55);
  text("Aciertos: "+disparos, 20, 95);

  if (vidas > 2) image(nave, 700, 40);
  if (vidas > 1) image(nave, 733, 40);
  if (vidas > 0) image(nave, 766, 40);


  imageMode(CORNER);
  //Bala
  xb = xb + sin(radians(-rb))*-8;
  yb = yb + cos(radians(-rb))*-8;
  pushMatrix();
  translate(xb, yb);
  rotate(radians(rb));

  if (neon == true) tint(colors);

  image(bala, -bala.width/2, -bala.height/2);
  popMatrix();

  ps.run();

  if (p < 2)ps.addParticle(x, y);
  p++; 
  if (p > 2) p=0;

  //Posicionamiento
  x = x + sin(radians(-r))*vr;
  y = y + cos(radians(-r))*vr;
  pushMatrix();
  translate(x, y);
  rotate(radians(r));
  image(nave, -nave.width/2, -nave.height/2);
  popMatrix();

  //Movimiento
  if (vr>0) vr=vr-0.1;
  if (vr<0) vr=vr+0.1;
  if (keyPressed) {
    if (key == 'a') izquierda2 = 1;
    if (key == 'd') derecha2 = 1;
    if (key == 'w') arriba2 = 1;
    if (key == 's') abajo2 = 1;
    if (key == ' ') disparonave2 = 1;
  }

  if (arriba2 == 1) vr = vr - 0.2;
  if (abajo2 == 1) vr = vr + 0.2;
  if (izquierda2 == 1) r = r - 4;
  if (derecha2 == 1) r = r + 4;
  if (disparonave2 == 1) {
    rb = r;
    xb = x; 
    yb = y;
    disparo.trigger();
  }

  //Limites d pantalla
  if (x<0+nave.height/2) x = 800-nave.height/2;
  if (x>800-nave.height/2) x = 0+nave.height/2;
  if (y<0+nave.height/2) y = 600-nave.height/2;
  if (y>600-nave.height/2) y = 0+nave.height/2;
}
}










void nave2() {
  as.actu(xb2, yb2, x2, y2);

  //Bala
  imageMode(CORNER);
  xb2 = xb2 + sin(radians(-rb2))*-8;
  yb2 = yb2 + cos(radians(-rb2))*-8;
  pushMatrix();
  translate(xb2, yb2);
  rotate(radians(rb2));

  image(bala2, -bala2.width/2, -bala2.height/2);
  popMatrix();

  //Posicionamiento
  x2 = x2 + sin(radians(-r2))*vr2;
  y2 = y2 + cos(radians(-r2))*vr2;
  pushMatrix();
  translate(x2, y2);
  rotate(radians(r2));
  image(nave2, -nave2.width/2, -nave2.height/2);
  popMatrix();

  ps.addParticle(x2, y2);

  //Movimiento
  if (vr2>0) vr2=vr2-0.1;
  if (vr2<0) vr2=vr2+0.1; 
  if (keyPressed) {
    if (keyCode == LEFT) izquierda = 1;
    if (keyCode == RIGHT) derecha = 1;
    if (keyCode == UP) arriba = 1;
    if (keyCode == DOWN) abajo = 1;
    if (keyCode == CONTROL) disparonave = 1;
  }

  if (arriba == 1) vr2 = vr2 - 0.2;
  if (abajo == 1) vr2 = vr2 + 0.2;
  if (izquierda == 1) r2 = r2 - 4;
  if (derecha == 1) r2 = r2 + 4;
  if (disparonave == 1) {
    rb2 = r2;
    xb2 = x2; 
    yb2 = y2;
    disparo.trigger();
  }

  //Limites d pantalla
  if (x2<0+nave2.height/2) x2 = 800-nave2.height/2;
  if (x2>800-nave2.height/2) x2 = 0+nave2.height/2;
  if (y2<0+nave2.height/2) y2 = 600-nave2.height/2;
  if (y2>600-nave2.height/2) y2 = 0+nave2.height/2;
}

void keyReleased() {
  if (keyCode == LEFT) izquierda = 0;
  if (keyCode == RIGHT) derecha = 0;
  if (keyCode == UP) arriba = 0;
  if (keyCode == DOWN) abajo = 0;
  if (keyCode == CONTROL) disparonave = 0;

  if (key == 'a') izquierda2 = 0;
  if (key == 's') abajo2 = 0;
  if (key == 'd') derecha2 = 0;
  if (key == 'w') arriba2 = 0;
  if (key == ' ') disparonave2 = 0;

  if (vidas < 0) {
    texto.keyreleased();

    if (keyCode == ENTER) nombre = texto.devolver();
  }
}

