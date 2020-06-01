/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Javier García
 */
public class Ak {
     //atributos del objeto de manera general
    String tipo="";
    int cargador=0;
    int precision=0;
    double velocidadCarga=0;
    double precio=0;
    int danio=0;
    double velocidadDisparo=0;
    
    //constructor con un parametro
    public Ak(String tipo){
        this.tipo=tipo;
    }
    //constructor con todos los atributos
    public Ak(String tipo, int cargador, int precision,double velocidadCarga,double precio,int danio){
        this.cargador=cargador;
        this.danio=danio;
        this.tipo=tipo;
        this.precio=precio;
        this.velocidadCarga=velocidadCarga;
    }
    //constructor vacio
    public Ak(){}
    //acciones-metodos, son las acciones o iteraciones del objeto
    public String disparar(){
        return "Te estoy disparando con un daño de"+danio+"pts";
    }
    public void apuntar(){
        
    }
    public void recargar(){
        
    }

    @Override
    public String toString() {
        return "Ak{" + "\n tipo:" + tipo + ", \n cargador:" + cargador + ", \n precision:" + precision + ",\n velocidadCarga:" + velocidadCarga + ",\n precio:" + precio + ",\n danio:" + danio + ",\n velocidadDisparo:" + velocidadDisparo + '}';
    }
}
