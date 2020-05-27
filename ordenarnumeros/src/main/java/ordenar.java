/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Javier
 */
import java.util.*;
import java.util.Scanner;
public class ordenar {
     public static void main(String[] args){
         Scanner leer=new Scanner(System.in);
         int arreglo[]=new int[30];
         int limite,i,j,aux;
         System.out.println("Ingrese la cantidad de numeros a ordenar:");
         limite = leer.nextInt();
         for(i=0;i<limite;i++){
             System.out.println("Ingrese los numeros a ordenar");
             arreglo[i]=leer.nextInt();
            }
         //ordenar los numeros
         for(i=0;i<limite;i++){
             for(j=i+1;j<limite;j++){
                 if(arreglo[i]<arreglo[j]){
                     aux=arreglo[i];
                     arreglo[i]=arreglo[j];
                     arreglo[i]=aux;
                 }
             }
         }
         //moestrar
         System.out.print("numeros ordenados:->Mayor {");
         for(i=0;i<limite;i++){
             System.out.print(arreglo[i]+",");
         }
         System.out.print("} <-Menor");
     }
}
