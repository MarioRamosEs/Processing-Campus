int seleccionado=0;
String c1="", c2="";

void setup() {
  size(350, 350);
}

void draw() {
  fill(100);
  rect(50, 50, 250, 100);
  rect(50, 200, 250, 100);
  fill(0);
  text(c1, 100, 100);
  text(c2, 100, 250);
  
  if(mousePressed && overRect(50, 50, 250, 100)) seleccionado = 1;
  if(mousePressed && overRect(50, 200, 250, 100)) seleccionado = 2;
}

void keyReleased(){
  if(seleccionado == 1) c1=c1+key;
  if(seleccionado == 2) c2=c2+key;
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}