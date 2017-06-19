void primerMenu() {
  cp5.getController("textoInicio").show(); 
  cp5.getController("entrar").show();
}

void segundoMenu() {
  cp5.getController("segundoTexto").show();
  cp5.getController("inputUser").show();
  cp5.getController("inputPass").show();
  cp5.getController("iniciarSesion").show();
}

void tercerMenu() {
  cp5.getController("tercerTexto").show();
}

void degradado() {
  n = 0;
  c1 = c2;
  c2 = color(random(255), random(255), random(255));
}