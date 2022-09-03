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
public class ejercicio4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
       
        double F, C;
        
        System.out.println("Ingrese la tempreratura en grados centigraos y se la mostraremosen Fahrenheit");
        
        C = leer.nextDouble();
        
        F = 32 +(9*C/5);
        
        System.out.println("La temperatura en grados Fahrenheit es: "+F);
        
    }
    
}
