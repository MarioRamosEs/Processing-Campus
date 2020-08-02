class gayFactory {

  ArrayList gays; 
  gayFactory() {
    gays = new ArrayList();
  }


  void actu() {
    for (int i = 0; i < gays.size(); i++) {
      gay a = (gay) gays.get(i);
      a.actu();
      //if (a.vida < 0) gays.remove(i);
    }
  }


  void anyadir(float x, float y, float z) {
    gays.add(new gay(x,y,z));
  }
}

