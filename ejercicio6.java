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
public class ejercicio6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int numero;
        
        System.out.println("Ingrese un numero y le diremos si es par o impar");
        
        numero = leer.nextInt();
        
        if (numero % 2 == 0 ){
            System.out.println("El numero "+numero+" es par");
             
            
        }else 
            System.out.println("El numero "+numero+" es impar");
    }
    
}
