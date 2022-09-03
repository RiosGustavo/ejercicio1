/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.condicionales;

import java.util.Scanner;

/**
 *
 * @author portatil
 */
public class ejercicio13 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int contador;
        Scanner entrada = new Scanner (System.in);
        System.out.println("Ingrese el tamaño del cuadrado");
        contador = entrada.nextInt();
        
        
                        
            for (int i=0 ; i<=contador-1 ; i ++) {
            
            System.out.print("*");
                     
                }
            
           System.out.println();   
                
                
            for (int i=0 ; i<=(contador-3) ; i ++) {
            System.out.print("*");    
               for (int j=0 ; j<=(contador-3) ; j ++) {
                     System.out.print(" ");    
               }
            System.out.println("*");  
            }
            
             for (int i=0 ; i<=contador-1 ; i ++) {
                System.out.print("*");
                }
            
    }
}
