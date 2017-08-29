float Version = 0.33;
PImage imagen;
String txt = "Esto es un texto que no debe ser interceptado.";
int xx, yy;

void settings(){
    size(300,300);
}

void setup() {
  background(225);
  println(cifradoCesar("hola", 2));
  
  //imagen = loadImage("img.tiff");
  //println(desencriptar_imagen(imagen));

  //println(encriptar("A1B2C3D4E5F6",2));
  //println(desencriptar(encriptar("mario",2),2));

  //encriptar_imagen(encriptar(txt,2));
  //save("img.tiff");

  //imagen = loadImage("img.tiff");
  //println(desencriptar(desencriptar_imagen(imagen),2));
}