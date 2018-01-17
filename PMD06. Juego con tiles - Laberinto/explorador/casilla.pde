class casilla{
	int tipo;
	boolean move = true;
	boolean mostrado = false;

	casilla(int tipo){
		this.tipo = tipo;
	}

	public void cambiarTipo(int tipo){
		this.tipo = tipo;
		if(tipo == 0) move = false; 
			if(tipo != 0) move = true; 
  	}
}