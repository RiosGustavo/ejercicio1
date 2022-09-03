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
public class ejercicio11 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
      
        int opcion, num1,num2, suma, resta, multiplicacion, division;
        String opcion1,s,n;
        
        System.out.println("Programa Calculadora ingrese dos numeros");
        
        num1 = leer.nextInt();
        num2 = leer.nextInt();
        
           opcion1 ="n";  
        do{
            
            System.out.println("Menu");    
            System.out.println("1 Sumar");    
            System.out.println("2 Restar");       
            System.out.println("3 Multiplicar");    
            System.out.println("4 Dividir"); 
            System.out.println("5 Salir"); 
            System.out.println("Elija la opcion");   
            
            opcion = leer.nextInt();
            
            switch(opcion){
                
                case 1:
                    suma = num1 + num2; 
                  System.out.println("La Suma es: "+suma);
                
                case 2:
                    resta = num1 - num2; 
                  System.out.println("La Resta es: "+resta);
                
                case 3:
                    multiplicacion = num1 * num2; 
                  System.out.println("La Multiplicacion es: "+multiplicacion);
                
                case 4:
                    division = num1 / num2; 
                  System.out.println("La Resta es: "+division);
                
                case 5:
                    
                  System.out.println("Esta Seguro que quiere salir del programa(s/n)");
                  opcion1 = leer.next();
            }
            
         
           
        }  while(opcion1.equals("n"));
            
        
    }
    
}
