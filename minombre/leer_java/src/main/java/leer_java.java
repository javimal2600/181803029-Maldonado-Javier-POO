/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Javier García
 */
import java.util.*;
import java.util.Scanner;
public class leer_java {
    public static void main(String[] args){
        Scanner leer=new Scanner(System.in);
        Scanner teclado = new Scanner(System.in);
        System.out.println("Dame un numero:");
        int numero=leer.nextInt();
        System.out.println("El numero leido es:"+numero);
        System.out.println("dame un numero double:");
        double numero2=leer.nextDouble();
        System.out.println("El numero leido es:"+numero2);
        
        System.out.println("Introduce un mensaje:");
        String mensaje=teclado.nextLine();
        System.out.println("Tu mensaje es:"+mensaje);
        
    }
}
