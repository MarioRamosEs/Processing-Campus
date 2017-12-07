public class map{
	PVector tam; 

	filemanager fm = new filemanager();
	casilla[][] mapa = new casilla[size.x][size.y];

	public map (PVector tam) {
		this.tam = tam;

		for(int y=0; y<tam.y-1; y++){
            for(int x=0; x<tam.x-1; x++) {
                mapa[y][x] = new Casilla(0);
            }
        }
	}

}



