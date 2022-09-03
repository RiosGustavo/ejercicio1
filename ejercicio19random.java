/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.matricesyvectores;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author portatil
 */
public class ejercicio19random {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int n;
        System.out.println("Ingrese el tamaño de la matriz");
        n= leer.nextInt();
        
       
        
        
        // Declaro la matriz
        int[][] matrizA = new int[n][n];
        int[][] matrizT = new int[n][n];
        int[][] matrizN = new int[n][n];
        // Asigno valores a la matriz
        
        for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
              matrizA[i][j] = (int)(Math.random()*100);
           
            }
           
            
        }
        // Muestro la matriz 
        System.out.print("Matriz Original");
         System.out.println("");
        for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
            System.out.print("["+matrizA[i][j]+"]");
           if (j!=n-1) System.out.print("\t");
            }
            System.out.println("");
        }
 System.out.println("");         
        //la matriz transpuesta
        for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
          matrizT[j][i] = matrizA[i][j];
         
            }
            System.out.println("");
        }
         //la muestro matriz transpuesta
         System.out.print("Matriz Transpuesta");
          System.out.println("");
        for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
          System.out.print("["+(matrizT[i][j])+"]");
           if (j!=n-1) System.out.print("\t");
            }
            System.out.println("");
        }
       // Matriz negativa
         for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
           matrizN[i][j] = -matrizT[i][j];
           
            }
            System.out.println("");
        }
         // muestro la  Matriz negativa
         System.out.print("Matriz Negativa");
          System.out.println("");
         for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
            System.out.print("["+(matrizN[i][j])+"]");
           if (j!=n-1) System.out.print("\t");
            }
            System.out.println("");
        }
         
         System.out.println("");
         
         if (Arrays.deepEquals(matrizN, matrizT ))
            System.out.println("Es una Matriz Antisimétrica");
         else
            System.out.println("No es una Matriz Antisimétrica");
    }
    
}
