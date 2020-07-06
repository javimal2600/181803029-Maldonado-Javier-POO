/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Javier
 */
public class hilos extends Thread
{
    String atributo;

    public hilos(int i)
    {
        atributo = "algo" + i;
    }

    public static void main(String[] args)
    {
        for (int i = 0; i < 4; i++)
        {
            hilos ch = new hilos(i);
            ch.start();
        }
    }

    public void run()
    {
        for (int i = 0; i < 5; i++)
        {
            System.out.println(i + ": " + atributo);
        }
    }
}
