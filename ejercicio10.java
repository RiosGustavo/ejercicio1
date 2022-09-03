/*Escriba un programa en el cual se ingrese un valor límite positivo, 
y a continuación solicite
//números al usuario hasta que la suma de los números 
introducidos supere el límite inicial.
 */
package com.mycompany.condicionales;

import java.util.Scanner;

/**
 *
 * @author portatil
 */
public class ejercicio10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        int num, num1, contador;
        
        
        System.out.println("Ingres un Valor limite positivo");
        
        num = leer.nextInt();
        
        contador = 0;
        
        while (contador <= num){
            System.out.println("Ingrese los numeros a sumar");
            num1= leer.nextInt();
            
            contador=contador+num1;
            
            
            
        }
        
        System.out.println("La suma de los numero es: "+contador);
        
    }
    
}
