/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mavenproject6;

import java.util.Scanner;

/**
 *
 * @author portatil
 */
public class ejercicio2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       Scanner leer = new Scanner(System.in);
       
       String  nombre;
       
        System.out.println("Ingrese su nombre");
        
        nombre = leer.nextLine();
        
        System.out.println("Su nombre es: "+nombre);
       
       
    }
    
}
