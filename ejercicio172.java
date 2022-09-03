/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.matricesyvectores;

import java.util.Scanner;

/**
 *
 * @author portatil
 */
public class ejercicio172 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);

        int n, x, y, w, z, v, fin, digitos;

        System.out.println("Por favor ingrese el tamaño del Vector");
        n = leer.nextInt();

        int[] vector = new int[n];

        x = 0;
        y = 0;
        z = 0;
        w = 0;
        v = 0;
        fin = 0;

        do {
            for (int i = 0; i < n; i++) {
                // llenar con numeros aleatorios
                vector[i] = (int) (Math.random() * 10000);

                //x= vector[i];
                System.out.print("[" + vector[i] + "]");
                // convertir el numero en cadena
                String cantidad = Integer.toString(vector[i]);

                digitos = cantidad.length();
                // opcional para mostrar los digitos de cada numero 
                System.out.println("" + digitos);

                if (digitos == 1) {
                    x++;

                }

                if (digitos == 2) {
                    y++;

                }

                if (digitos == 3) {
                    z++;

                }

                if (digitos == 4) {
                    w++;

                }

                if (digitos == 5) {
                    v++;

                }

            }
            System.out.println("las cantidad de numeros con un digito es " + x);
            System.out.println("las cantidad de numeros con dos digitos es " + y);
            System.out.println("las cantidad de numeros con tres digito es " + z);
            System.out.println("las cantidad de numeros con cuatro digito es " + w);
            System.out.println("las cantidad de numeros con cinco digito es " + v);

        } while (fin == n);

    }
}
