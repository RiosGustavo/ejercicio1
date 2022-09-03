/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mavenproject6;

import java.util.Scanner;
import java.lang.Math;
/**
 *
 * @author portatil
 */
public class ejercicio5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        double numero, raiz ;
        
        System.out.println("Ingrese un numero");
        
        numero = leer.nextDouble();
        
        System.out.println("el doble del numero es: "+(numero*2));
         System.out.println("el triple del numero es: "+(numero*3));
        
        raiz = Math.sqrt(numero);
        
        System.out.println("La raiz cuadrada del numero es: "+raiz);
        
        
    }
    
}
