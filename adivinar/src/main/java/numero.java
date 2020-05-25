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
public class numero {
     public static void main(String[] args){
         Scanner leer= new Scanner(System.in);
         System.out.println("ADIVINAR UN NUMERO");
         int numero=(int)(Math.random()*100);//generar un numero aleatorio
         int entra=-1;
         int cont=0;
         do{ 
            System.out.println("Introduce un numero de entre 0 y 100");
            entra=leer.nextInt();
            if(entra>numero) {
		System.out.println("El numero es menor");
            }else if(entra<numero) {
		System.out.println("El numero es mayor");
            }
            cont++;
         }while(entra!=numero);
         System.out.println("Averiguaste el numero con " + cont + "intentos");
     }
}
