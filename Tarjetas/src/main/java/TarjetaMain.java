/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Javier García
 */
public class TarjetaMain {
    public static void main(String[] args){
        Tarjeta morada= new Tarjeta();
        morada.tipo="Morada";
        morada.asignacion=9;
        morada.credito=0;
        morada.mensualidad=0;
        morada.tasaInteres=0;
        System.out.println(morada.toString());
        
        Tarjeta estudiante=new Tarjeta();
        estudiante.tipo="Estudiante";
        estudiante.asignacion=3;
        estudiante.credito=0;
        estudiante.mensualidad=0;
        estudiante.tasaInteres=0;
        System.out.println(estudiante.toString());
        
        Tarjeta buhoEspecial=new Tarjeta();
        buhoEspecial.tipo="Buho Especial";
        buhoEspecial.asignacion=12;
        buhoEspecial.credito=0;
        buhoEspecial.mensualidad=0;
        buhoEspecial.tasaInteres=0;
        System.out.println(buhoEspecial.toString());
        
        Tarjeta docente=new Tarjeta();
        docente.tipo="Docente";
        docente.asignacion=2;
        docente.credito=0;
        docente.mensualidad=0;
        docente.tasaInteres=0;
        System.out.println(docente.toString());
    
        Tarjeta buhoBlancoOro=new Tarjeta();
        buhoBlancoOro.tipo="Buho Blanco de Oro";
        buhoBlancoOro.asignacion=15;
        buhoBlancoOro.credito=0;
        buhoBlancoOro.mensualidad=0;
        buhoBlancoOro.tasaInteres=0;
        System.out.println(buhoBlancoOro.toString());
    }
}
