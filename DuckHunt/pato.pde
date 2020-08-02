class pato{
  float distx,distancia;
  boolean muerto;
  float x , y;
  int espera,tiempo2,q;
  int img;
  PImage[] derecha;
  PImage[] izquierda;
  PImage owned;

  pato (int modelo){
    muerto = false;
    img = 0;
    q = 0;
    espera = millis();

    String a = "pato"+modelo+"_derecha"+".png";
    String b = "pato"+modelo+"_derecha2"+".png";
    String c = "pato"+modelo+"_derecha3"+".png";
    derecha = new PImage[3];
    derecha[0]= loadImage(a);
    derecha[1]= loadImage(b);
    derecha[2]= loadImage(c);

    a = "pato"+modelo+"_izquierda"+".png";
    b = "pato"+modelo+"_izquierda2"+".png";
    c = "pato"+modelo+"_izquierda3"+".png";
    izquierda = new PImage[3];
    izquierda[0]= loadImage(a);
    izquierda[1]= loadImage(b);
    izquierda[2]= loadImage(c);

    a = "pato"+modelo+"_muerto"+".png";
    owned = loadImage(a);

    x = random (0,500);
    distx = random (50,450);
    y = 300;
  }

  void actu() {
    if(q == 1)     muriendo();
    if(!muerto){

      if (millis() - espera > 200){
        img = img + 1;
        espera = millis();
        if (img > 2) img = 0;
      }

      volar();
      y = y - float(n)*0.10;
      if (y + derecha[0].height < 0) {
        muerto = true;
        vidas = vidas - 1;
        revivir();
      }
    }
  }

  //***K DESTINO DE K SE MUEVA***
  void volar(){
    imageMode(CENTER);
    if (distx > x){
      image(derecha[img], x, y);
      x = x + float(n)*0.10;
    } 

    if (distx < x){
      image(izquierda[img], x, y);
      x = x - float(n)*0.10;
    }

    distancia = dist (distx,y,x,y);
    if (distancia < 4) distx = random (50,450);
  }

  void disparo(){
    if(!muerto) {
      if (dist (mouseX,mouseY,x,y) < 16){
        q = 1; 
            tiempo2 = millis();
      }
    }
  }

  void muriendo(){
    image(owned,x,y);

    muerto = true;  
    if (millis() - tiempo2 > 1500){
      pajaros = pajaros + 1;
      q = 0;
      revivir();
    }
  }
  void revivir(){
    muerto = false;
    y = 300;
  }


} 


