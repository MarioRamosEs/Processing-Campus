String texto = "pixelscroll  by mario";
float desplazado = 20;
float Version = 1;
float x, m;

/*
Cada letra es de 5x5
 
 */


void setup() {
  size(800, 100);
  frameRate(5);
}

void draw() {
  background(40);

  desplazado = desplazado - 20;
  m = desplazado;

  fill(0, 225, 0);

  if (m < -(texto.length()+1)*100+20) {
    desplazado = width;
    m = width;
  }

  for (int i=0; i<texto.length(); i++) {
    char w = texto.charAt(i);
    switch (w) {
    case 97:
      letraa(m, 0);
      break;

    case 98:
      letrab(m, 0);
      break;

    case 99:
      letrac(m, 0);
      break;

    case 100:
      letrad(m, 0);
      break;

    case 101:
      letrae(m, 0);
      break;

    case 102:
      letraf(m, 0);
      break;

    case 103:
      letrag(m, 0);
      break;

    case 104:
      letrah(m, 0);
      break;

    case 105:
      letrai(m, 0);
      break;

    case 106:
      letraj(m, 0);
      break;

    case 107:
      letrak(m, 0);
      break;

    case 108:
      letral(m, 0);
      break;

    case 109:
      letram(m, 0);
      break;

    case 110:
      letran(m, 0);
      break;

    case 111:
      letrao(m, 0);
      break;

    case 112:
      letrap(m, 0);
      break;

    case 113:
      letraq(m, 0);
      break;

    case 114:
      letrar(m, 0);
      break;

    case 115:
      letras(m, 0);
      break;


    case 116:
      letrat(m, 0);
      break;

    case 117:
      letrau(m, 0);
      break;

    case 118:
      letrav(m, 0);
      break;

    case 119:
      letraw(m, 0);
      break;

    case 120:
      letrax(m, 0);
      break;

    case 121:
      letray(m, 0);
      break;

    case 122:
      letrax(m, 0);
      break;
    }
    m = m + 120;
  }
}

void letraa (float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+20, y+60, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrag(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrab (float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrac(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrad(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
}

void letrae(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letraf(float x, float y) {
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
}

void letrah(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+20, y+60, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrai(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+20, y+20, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+20, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
}

void letraj(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+40, y+20, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
}

void letrak(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+40, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letral(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letram(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+80, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+20, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+80, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+80, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+80, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+80, y+80, 20, 20);
}

void letran(float x, float y) {
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrao(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrap(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+20, y+60, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
}

void letraq(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+40, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+20, y+60, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrar(float x, float y) {
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letras(float x, float y) {
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
}

void letrat(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+80, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+40, y+20, 20, 20);
  rect(x+80, y+20, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+40, y+80, 20, 20);
}

void letrau(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letrav(float x, float y) {
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
}

void letraw(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+80, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+80, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+80, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+80, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
  rect(x+80, y+80, 20, 20);
}

void letrax(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+80, y+0, 20, 20);
  rect(x+20, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+20, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+80, y+80, 20, 20);
}

void letray(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+80, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+80, y+20, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+40, y+80, 20, 20);
}

void letraz(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+20, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letra2(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letra3(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letra4(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letra5(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letra6(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letra7(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+20, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
}

void letra8(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+0, y+60, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+0, y+80, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letra9(float x, float y) {
  rect(x+0, y+0, 20, 20);
  rect(x+20, y+0, 20, 20);
  rect(x+40, y+0, 20, 20);
  rect(x+60, y+0, 20, 20);
  rect(x+0, y+20, 20, 20);
  rect(x+60, y+20, 20, 20);
  rect(x+0, y+40, 20, 20);
  rect(x+20, y+40, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+60, y+40, 20, 20);
  rect(x+60, y+60, 20, 20);
  rect(x+20, y+80, 20, 20);
  rect(x+40, y+80, 20, 20);
  rect(x+60, y+80, 20, 20);
}

void letra1(float x, float y) {
  rect(x+40, y+0, 20, 20);
  rect(x+20, y+20, 20, 20);
  rect(x+40, y+20, 20, 20);
  rect(x+40, y+40, 20, 20);
  rect(x+40, y+60, 20, 20);
  rect(x+40, y+80, 20, 20);
}

