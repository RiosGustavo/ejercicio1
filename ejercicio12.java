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
public class ejercicio12 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       Scanner leer = new Scanner(System.in);
       int cantidad, contador1, contador2,n;
       String cadena, l1, l2;
       
       
        
       n= 0;
       contador1 = 0;
        contador2 = 0;
        
      
      do {
          
         System.out.println("Ingrese la Cadena para verificar si cumple con la secuencia FDE");
        cadena = leer.nextLine(); 
        
        cantidad = (cadena.length());
        if  (cadena.equals("&&&&&")){
            n=1;
            
        }
        
        
        l1 = (cadena.substring(0,1));
        l2 = (cadena.substring(4,5));
        
        
         // System.out.println("primera letra es "+l1+" ultima letra es"+l2);
          
          
          if (cantidad == 5){
          if (l1.equalsIgnoreCase("x") && (l2.equalsIgnoreCase("o"))){
              contador1 = contador1+1;
          } else
              contador2 = contador2+1;
              
              
         }            
                
                  
      }while(n == 0);
      
      
       System.out.println("La cantidad de lecturas CORRECTAS de seucencia FDE es: "+contador1);
      
       System.out.println("La cantidad de lecturas INCORRECTAS de seucencia FDE es: "+contador2);
          
   
        
    }
    
}
