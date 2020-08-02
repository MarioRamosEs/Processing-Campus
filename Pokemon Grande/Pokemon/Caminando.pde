void caminando() {
  for (int y=0;y<alto;y++) {
    for (int x=0;x<ancho;x++) {
      pintar = mapa[y*ancho+x];
      image(imagenessuelo[pintar], x*16, y*16, 16, 16);

      pintar = casas[y*ancho+x];
      image(imagenescasas[pintar], x*16, y*16, 16, 16);
    }
  }

  Ash();

  ts.actu(xAsh, yAsh);
  if (ts.activo == true) {
    int esta2[] = ts.comprobar();
    switch(esta2[0]) {
    case 1:
      if (esta2[2] != 0) xAsh = esta2[2]*16;
      if (esta2[3] != 0) yAsh = esta2[3]*16;
      cargarmapa(esta2[1]);
      break;
    }
    ts.activo = false;
  }
}

