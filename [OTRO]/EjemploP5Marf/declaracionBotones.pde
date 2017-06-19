void declararInstancias() {
  cp5.addButton("entrar")
    .setBroadcast(false)
    .setValue(0)
    .setPosition(100, 100)
    .setSize(200, 19)
    .setBroadcast(true)
    .hide()
    ;

  cp5.addButton("iniciarSesion")
    .setBroadcast(false)
    .setValue(0)
    .setPosition(400, 220)
    .setSize(150, 25)
    .setBroadcast(true)
    .hide()
    ;

  cp5.addTextlabel("textoInicio")
    .setText("Esta es la primera pantalla")
    .setPosition(10, 10)
    .setColorValue(#FFFFFF)
    .setFont(createFont("Calibri", 50))
    .hide()
    ;

  cp5.addTextlabel("segundoTexto")
    .setText("Esta es la segunda pantalla")
    .setPosition(10, 10)
    .setColorValue(#FFFFFF)
    .setFont(createFont("Calibri", 50))
    .hide()
    ;

  cp5.addTextlabel("tercerTexto")
    .setText("Has iniciado sesión correctamente")
    .setPosition(10, 10)
    .setColorValue(#FFFFFF)
    .setFont(createFont("Calibri", 30))
    .hide()
    ;

  cp5.addTextfield("inputUser")
    .setPosition(20, 100)
    .setSize(200, 40)
    .setFont(createFont("arial", 20))
    //.setFocus(true)
    //.setColor(color(255, 0, 0))
    .hide()
    ;

  cp5.addTextfield("inputPass")
    .setPosition(20, 200)
    .setSize(200, 40)
    .setFont(createFont("arial", 20))
    //.setFocus(true)
    //.setColor(color(255, 0, 0))
    .hide()
    ;
}


public void entrar() {
  println("has pulsado el boton entrar");
  cp5.getController("textoInicio").hide(); 
  cp5.getController("entrar").hide();
  estado = 2;
  degradado();
}

public void iniciarSesion() {
  String tempUser = cp5.get(Textfield.class, "inputUser").getText();
  String tempPass = cp5.get(Textfield.class, "inputPass").getText();
  if (user.equals(tempUser) && pass.equals(tempPass)) {
    estado = 3;
    degradado();
    //ocultar todo lo de la segunda pantalla
    cp5.getController("inputUser").hide(); 
    cp5.getController("inputPass").hide();
    cp5.getController("iniciarSesion").hide(); 
    cp5.getController("segundoTexto").hide();
  } else {
    cp5.get(Textfield.class, "inputUser").clear();
    cp5.get(Textfield.class, "inputPass").clear();
  }
}