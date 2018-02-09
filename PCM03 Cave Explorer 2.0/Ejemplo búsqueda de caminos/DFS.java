package com.prac1;

import com.comun.Vector2DM;

import java.util.ArrayList;

public class DFS {
    ArrayList<Casilla> Nodos;
    Casilla[][] mapa;
    Casilla posOrigen;

    DFS(Casilla[][] mapa, Casilla posOrigen){
        Nodos = new ArrayList<Casilla>();
        this.mapa = mapa;
        this.posOrigen = posOrigen;
    }

    public boolean buscarSalida(){
        addNodos(posOrigen);

        for (Casilla casilla: Nodos) {
            if(casilla.tipo == 4) return true;
        }

        return false;
    }

    private void addNodos(Casilla nodo){
        Nodos.add(nodo);

        Vector2DM pos = nodo.pos;
        Casilla nodotemp;


        nodotemp = mapa[pos.y+1][pos.x];
        if(nodotemp.caminable && !nodotemp.analizado){
            nodotemp.analizado = true;
            addNodos(nodotemp);
        }

        nodotemp = mapa[pos.y-1][pos.x];
        if(nodotemp.caminable && !nodotemp.analizado){
            nodotemp.analizado = true;
            addNodos(nodotemp);
        }

        nodotemp = mapa[pos.y][pos.x-1];
        if(nodotemp.caminable && !nodotemp.analizado){
            nodotemp.analizado = true;
            addNodos(nodotemp);
        }

        nodotemp = mapa[pos.y][pos.x+1];
        if(nodotemp.caminable && !nodotemp.analizado){
            nodotemp.analizado = true;
            addNodos(nodotemp);
        }
    }
}
