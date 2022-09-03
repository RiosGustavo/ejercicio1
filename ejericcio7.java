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
public class ejericcio7 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       Scanner leer = new Scanner(System.in);
       
       String frase;
       
        System.out.println("Ingrese la clave");
        
        frase = leer.nextLine();
        
        if (frase.equalsIgnoreCase("eureka")){
             System.out.println("La clave es correcta");
        }else
            System.out.println("La clave es incorrecta");
     
    }
    
    
}
