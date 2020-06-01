/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Javier García
 */

public class JuegoMain {
     public static void main(String[] args){
         Ak bronce = new Ak("Bronce",5,75,5,1000,10);
         bronce.velocidadDisparo=10;
         System.out.println(bronce.toString());
         System.out.println(bronce.disparar());
         
         Ak plata=new Ak();
         plata.tipo="Plata";
         plata.cargador=8;
         plata.precision=70;
         plata.velocidadCarga=4.5;
         plata.precio=2300;
         plata.danio=11;
         plata.velocidadDisparo=9.8;
         System.out.println(plata.toString());
         
         Ak oro=new Ak();
         oro.tipo="Oro";
         oro.cargador=10;
         oro.precision=85;
         oro.velocidadCarga=4.3;
         oro.precio=2500;
         oro.danio=13;
         oro.velocidadDisparo=9.7;
         System.out.println(oro.toString());
         
         Ak diamante=new Ak();
         diamante.tipo="Diamante";
         diamante.cargador=20;
         diamante.precision=95;
         diamante.velocidadCarga=3;
         diamante.precio=4000;
         diamante.danio=20;
         diamante.velocidadDisparo=9.4;
         System.out.println(diamante.toString());
         
         Ak adamantium=new Ak();
         adamantium.tipo="Adamantium";
         adamantium.cargador=30;
         adamantium.precision=100;
         adamantium.velocidadCarga=1;
         adamantium.precio=10000;
         adamantium.danio=27;
         adamantium.velocidadDisparo=8;
         System.out.println(adamantium.toString());
     }
}
