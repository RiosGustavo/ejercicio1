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
public class EJERCICIO8 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        String palabra;
        int cantidad;
        
        System.out.println("Ingrese una palabra de 8 caracteres");
        
        palabra = leer.nextLine();
        
        cantidad = (palabra.length());
        
        if (cantidad == 8){
            System.out.println("Correcto la frase "+palabra+" tiene 8 caracteres");
        }else
            System.out.println("Incorrecto la frase "+palabra+" no tiene 8 caracteres");
        
    }
    
}
