void setup(){
  println("Hola! :)");
  println("El factorial de 20 es: "+facto(20));
  println("El fibonacci de 20 es: "+fibonacci(20));
}

double facto(double num){
  if (num == 1) return 1;
  return num*facto(num - 1);
}

double fibonacci(double num){
  if (num < 2) return 1;
  return fibonacci(num - 2)+fibonacci(num - 1);
}