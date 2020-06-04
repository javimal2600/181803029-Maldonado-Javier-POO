/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Javier García
 */
public class castear {
    public static void main(String[] args){
        //casting explicito
        short a = 1;
        int b=15;
        a =(short)b;
        
        //casting implicito
        float c=4.5f;
        double d=5.6;
        d=c;
        //¿que pasa con los decimales cuando casteo de flotante o double a entero?
        double pi=3.1416;
        int duda= (int) pi;
        System.out.println("resultado:"+" "+duda);
        //casteando una String
        String valor="15";
        int n = Integer.parseInt(valor);
        n=n+duda;
        System.out.println("valor="+valor);
        
        //ciclo for
        
        for(int i=0;i<10;i++){
            System.out.println(i+"-");
        }
        //ciclo while
        int j=1;
        while(j<10){
            System.out.println(j+"-");
            j++;
        }
        //ciclo dowhile
        int z=1;
        do{
            System.out.println(z+"-");
            z++;
        }while(z<10);
        
}
}
