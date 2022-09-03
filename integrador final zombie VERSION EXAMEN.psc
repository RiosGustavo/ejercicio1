////El apocalipsis Zombie se ha desatado, pero aún hay esperanza. El Dr. Galard ha conseguido aislar el gen Z
////analizando muestras genéticas codificadas. Una muestra se corresponde con una secuencia de caracteres
////compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA". Para poder detectar el gen
////		Z, se representa la muestra como una matriz cuadrada (MxM) y se busca en las dos diagonales principales que
////		todas las bases sean iguales.
////
Algoritmo EjercicioIntegradorFinalZombie
	Definir matriz,muestra,v1,v2 Como Caracter
	Definir n,m,W Como Entero
	Escribir 'Porfavor ingrese la muestra a analizar'
	Escribir 'como el ejemplo mostrado a continucacion'
	Escribir 'ABCDESFRTADFVCDA'
	Leer muestra
	m <- 0
	n <- 1
	m <- Longitud(muestra)
	Escribir ,m
	Mientras Longitud(muestra)<>9 Y Longitud(muestra)<>16 Y Longitud(muestra)<>1369 Hacer
		Escribir 'escribir tamaño de la  muestra incorrecta'
		Escribir 'ingrese tamaño de muesta valido'
		Leer muestra
		m <- Longitud(muestra)
		Escribir ,m
	FinMientras
	Si m MOD 3=0 Entonces
		n <- 3
	SiNo
		Si m MOD 4=0 Entonces
			n <- 4
		SiNo
			Si m MOD 37=0 Entonces
				n <- 37
			FinSi
		FinSi
	FinSi
	Escribir ,n
	Dimension matriz[n,n]
	llenadoMatriz(matriz,muestra,n)
	llamadarMatriz(matriz,n)
	Escribir ''
	// v1 = vectoresdiagonales(matriz, n )
	// escribir, v1
	// v2 = vectoresdiagonales2(matriz, n )
	// escribir, v2
	comparacionVectores(matriz,n)
FinAlgoritmo

Funcion llenadoMatriz(matriz por Referencia,muestra por Referencia,n por valor)
	Definir i,j,K Como Entero
	K <- 0
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta n-1 Hacer
			matriz[i,j]<-subcadena(muestra,K,K)
			K <- K+1
		FinPara
		Escribir ''
	FinPara
FinFuncion

Funcion llamadarMatriz(matriz por Referencia,n por valor)
	Definir i,j Como Entero
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta n-1 Hacer
			Escribir '[',matriz[i,j],']' Sin Saltar
		FinPara
		Escribir ''
	FinPara
FinFuncion

Funcion vector1 = vectoresdiagonales(matriz por Referencia,n por valor)
	Definir i,j,K,k2,k3 Como Entero
	Definir vector1 Como Caracter
	K <- 0
	Mientras K<=(n-1) Hacer
		Para i<-0 Hasta n-1 Hacer
			Para j<-0 Hasta n-1 Hacer
				Si i=j Entonces
					vector1 <- matriz[i,j]
				FinSi
			FinPara
			Escribir '[',vector1,']' Sin Saltar
			K <- K+1
		FinPara
		Escribir ''
	FinMientras
FinFuncion

Funcion vector2 = vectoresdiagonales2(matriz por Referencia,n por valor)
	Definir i,j,K,k2,k3 Como Entero
	Definir vector2 Como Caracter
	K <- 0
	Mientras K<=(n-1) Hacer
		Escribir ''
		Para i<-0 Hasta n-1 Hacer
			Para j<-0 Hasta n-1 Hacer
				Si (i+j)=(n-1) Entonces
					vector2 <- matriz[i,j]
				FinSi
			FinPara
			Escribir '[',vector2,']' Sin Saltar
			K <- K+1
		FinPara
		Escribir ''
	FinMientras
FinFuncion

Funcion comparacionVectores(matriz por Referencia,n por valor)
	Definir i,j,K,k2,k3 Como Entero
	Definir v1,v2 Como Caracter
	v1 <- vectoresdiagonales(matriz,n)
	v2 <- vectoresdiagonales2(matriz,n)
	K <- 0
	k2 <- 0
	k3 <- 0
	Repetir
		Para i<-0 Hasta n-1 Hacer
			Si v1=matriz[0,0] Entonces
				k2 <- k2+1
			FinSi
		FinPara
		Para i<-0 Hasta n-1 Hacer
			Si v2=matriz[0,(n-1)] Entonces
				k3 <- k3+1
			FinSi
		FinPara
		Si k2=n Y k3=n Entonces
			Escribir 'la muestra es correcta los caracteres de cada diagonal son iguales la muestra contiene el GenZ'
		SiNo
			Escribir 'La muestra no es corecta los caracteres de cada diagonal son diferentes la muestra NO contiene el GenZ'
		FinSi
	Mientras Que K=(n)
FinFuncion
