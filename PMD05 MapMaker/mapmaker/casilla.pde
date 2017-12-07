public class casilla {
	private int tipo;

	public casilla () {
		
	}

	public casilla (int tipo) {
		setTipo(tipo);
	}


	//Getters Setters
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public int getTipo() {
		return tipo;
	}
}