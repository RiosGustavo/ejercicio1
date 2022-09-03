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
public class ejercicio9 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        String palabra, letra;
        
        System.out.println("Ingrese una palabra");
        palabra = leer.nextLine();
        
        letra = (palabra.substring(0,1));
        
        if (letra.equalsIgnoreCase("a")){
            System.out.println("Correcto la palabra "+palabra+" inicia por a");
        }else 
            System.out.println("Incorrecto la palabra "+palabra+" no inicia por a ");
    }
    
}
