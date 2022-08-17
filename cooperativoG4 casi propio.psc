////Para ello debemos primero leer todo el ejercicio y ponernos de acuerdo con el equipo
////	en las tareas que hará cada uno y en cómo llamemos a las variables y subprogramas
////	necesarios. Recordemos que todo lo tenemos que hacer con subprocesos o funciones.
////	El ejercicio será mucho más sencillo si establecemos las bases como equipo al principio.

////Vamos ahora a los requerimientos:
////subprograma inicializarMatriz:
////	Debe recibir como parámetros la matriz a inicializar, la cantidad de filas y la cantidad de
////	columnas.

//Ejercicio Cooperativo
//Algoritmo principal:
//		Debería quedarnos algo así
//		Algoritmo ejercicioCooperativoGuia4
//			Definir tablero como Cadena
//			Dimension tablero[9, 12]
//			inicializarMatriz(tablero, 9, 12)
//			agregarPalabra(tablero, "vector", 0)
//			agregarPalabra(tablero, "matrix", 1)
//			agregarPalabra(tablero, "programa", 2)
//			agregarPalabra(tablero, "subprograma", 3)
//			agregarPalabra(tablero, "subproceso", 4)
//			agregarPalabra(tablero, "variable", 5)
//			agregarPalabra(tablero, "entero", 6)
//			agregarPalabra(tablero, "para", 7)
//			agregarPalabra(tablero, "mientras", 8)
//			acomodarPalabras(tablero)
//			imprimirMatriz(tablero, 9, 12)
//FinAlgoritmo


Algoritmo ejercicioCooperativoGuia4
	Definir tablero como Cadena
	Dimension tablero[9, 12]
	inicializarMatriz(tablero,9,12)
	
	agregarPalabra(tablero,"vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma",3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	
	acomodarPalabras(tablero)
	
	imprimirMatriz(tablero, 9, 12)
FinAlgoritmo
////En primera instancia inicializaremos la matriz con un "*" (asterisco) en cada lugar para que
	////		la misma no esté vacía y no tengamos problemas.
	////	subprograma imprimirMatriz:
	////		Debe recibir como parámetros la matriz a imprimir, la cantidad de filas y la cantidad de
	////		columnas.
	////		Para que veamos la matriz en la consola cuando lo necesitemos.
	////			Tengamos en cuenta que para que no queden pegadas las letras vamos a imprimir un
	////				espacio, la letra y otro espacio. Lo hacemos en imprimir para no modificar el contenido de la
	////					matriz.
SubProceso inicializarMatriz(tablero,9,12)
	Definir f,c Como Entero
	Para f=0 Hasta 8 Con Paso 1 Hacer
		Para c=0 Hasta 11 Con Paso 1 Hacer
			tablero[f,c]="*"
		Fin Para
	Fin Para
FinSubProceso

SubProceso imprimirMatriz(tablero , 9, 12)
	Definir f,c Como Entero
	Para f=0 Hasta 8 Con Paso 1 Hacer
		Para c=0 Hasta 11 Con Paso 1 Hacer
			Escribir sin saltar " " tablero[f,c]
		Fin Para
		Escribir""
	Fin Para
FinSubProceso
////subprograma agregarPalabra:
////					Se le debe indicar en los parámetros la matriz donde se va a agregar la palabra, la fila en la
////					que se agregará y la propia palabra. Una vez el subprograma reciba eso debe descomponer
////					la palabra y agregarla a la matriz en la posición deseada.
SubProceso agregarPalabra(tablero Por Referencia,palabra,fila)
		Definir i Como Entero
		para i=0 hasta Longitud(palabra)-1 Hacer
			tablero[fila,i]= Subcadena(palabra,i,i)
		FinPara
FinSubProceso

////subprograma buscarR:
	////					Se le debe indicar la matriz donde se buscará la letra R y el número de fila en el que
	////					buscaremos.
	////					Debe comparar cada letra de la fila indicada hasta que encuentre la primera letra ?R?. Ahí
	////					debe devolvernos la posición de ?R?.
	////				Nota: cuidado! debe devolver la posición de la primera R solamente.

Funcion posicion <- buscarR(tablero Por Referencia, fila)
	Definir posicion,i como Entero
	posicion = 0
	para i=0 hasta 11 Hacer
		Si tablero(fila,i) ="r"
			posicion=i
			i=12
		FinSi
		
	FinPara
FinFuncion

////subprograma acomodarPalabra:
	////					Se le debe indicar sólo la matriz en donde se acomodarán las palabras.
	////					Ahora debemos crear una lógica que nos permita mover las palabras de las filas. Recordar
	////					que podemos llamar a buscarR para saber cuántos espacios hay que mover las palabras.
	////						Una vez que las palabras se muevan hay que llenar los espacios con asteriscos
	////					nuevamente: es decir, si la palabra se mueve dos posiciones a la derecha hay que agregar
	////							dos asteriscos a la izquierda de la fila.
	////						Nota: ¡recuerden que la primera letra ?R? debe quedar en la posición 5 de la matriz!
SubProceso acomodarPalabras(tablero)
	Definir i, j, posicion Como Entero
	
	Para i=0 Hasta 8 Con Paso 1 Hacer
		posicion=buscarR(tablero,i)
		si posicion <> 5  Entonces
			para j = 11 Hasta 5-posicion con paso -1 Hacer
				
				tablero[i,j]= tablero(i,j-(5-posicion))
			FinPara
			para j = 5 - posicion-1 Hasta 0 con paso -1 Hacer
				tablero[i,j]= "*"
			FinPara
		FinSi
				
	FinPara
	
	
	
FinSubProceso