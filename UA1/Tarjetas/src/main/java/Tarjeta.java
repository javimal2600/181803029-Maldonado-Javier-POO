/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Javier García
 */
public class Tarjeta {
    String tipo="";
    int asignacion=0;
    double credito=0;
    double mensualidad=0;
    double tasaInteres=0;

    @Override
    public String toString() {
        return "Tarjeta{" + "tipo=" + tipo + ", asignacion=" + asignacion + ", credito=" + credito + ", mensualidad=" + mensualidad + ", tasaInteres=" + tasaInteres + '}';
    }
    
    
}
