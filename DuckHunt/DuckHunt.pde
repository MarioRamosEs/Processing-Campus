PImage mapa,perro,loser;
PFont font;
PImage pato1;
int n,vidas,pajaros,ultimolv,ultimo,tiempo;
boolean vivo;
float Version = 1.0;

pato edgar; 
pato edgar2;
pato edgar3;
void setup (){
  vivo = true;
  size (500,467);
  ultimolv = 1;
  n = 1; //nivel y velocidad
  pajaros = 0; // pajaros muertos
  vidas = 3; // vidas k te quedan
  ultimo = 0; //pajaros k matastes cuando subistes el nivel
  edgar = new pato(2);
  edgar2 = new pato(1);
  edgar3 = new pato(2);
  font = loadFont("ComicSansMS-13.vlw"); 
  mapa = loadImage("mapa.png");
  perro = loadImage("perro.png");
  loser = loadImage("loser.png");
}

void draw(){
  background(137,243,229); // color azul celeste
  if(vivo){
    edgar.actu();
    edgar2.actu();
    edgar3.actu();
    
    if (vidas < 1) {
      vivo = false;
      tiempo = millis();
    }
    
    //***SUBIDA DE NIVEL***
    if (pajaros == ultimo + 3){
      ultimo = pajaros;
      ultimolv = n;
      n = n + 1;
      edgar.revivir();
      edgar2.revivir();
      edgar3.revivir();
    }
    
    
    
  } else {
    image(perro, 440, 225);
    image(loser, 150, 50);
    
    if(millis()-tiempo>1500){
      vivo = true;
      vidas = 3;
      n = 1;
      pajaros = 0;
      edgar.revivir();
      edgar2.revivir();
      edgar3.revivir();
    }
  }
  
  imageMode(CORNER);
    image(mapa, 0, 0);
    // ***BARRAS***
    text("lv:", 50, 425); 
    text(n, 70, 425);
    text("vidas:", 380, 425);
    text(vidas, 420,425);
    text("eliminados:", 130, 425);
    text(pajaros,200,425);
}

  void mouseReleased() {
    edgar.disparo(); 
    edgar2.disparo(); 
    edgar3.disparo(); 

  }

