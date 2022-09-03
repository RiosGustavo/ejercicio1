/////Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. Dicha
////m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. Tenemos que ingresar nuestro
////usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra cuenta.
////? Condici�n simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
////	verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es correcta
////	haremos que una variable llamada Login sea verdadera.
////	? Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un bucle
////	Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
////	? Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al men� de
////		opciones: "Ingresar botellas", "Consultar saldo" y "Salir"
////	? Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema. Una vez
////			que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando cada botella. En
////			cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y 3000 gr, que va a ser el
////				peso de las botellas a reciclar (simulando que el usuario est� ingresando botellas en la
////			m�quina). Una vez generado, seg�n el peso del material, usaremos un condicional m�ltiple
////		para asignarle un valor monetario:
////		? Si es menos de 500 gr, corresponden $50
////		? Si es entre 501 gr y 1500 gr, corresponden $125
////			? Si es m�s de 1501 gr, corresponden $200
////		? Hecho esto, el programa debe informar al usuario por pantalla el valor que se le ofrece. Si el
////		usuario acepta, lo acreditamos a su saldo, sino se debe devolver el material (s�lo mostrar en
////			pantalla "Devolviendo material"). Para esto usaremos un condicional doble.
////				? Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
////					? Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al men� principal.
Algoritmo sin_titulo
	definir usuario, contrasena, acepta  Como Caracter
	definir login Como Logico
	definir c, cantidad,f, opci,pesoBotella,c1,c2,c3,c4, i,p1,p2,p3,ValorTotal, saldo, saldototal Como Entero
	
	c=1
	login = falso
	Mientras c<=3 y login = falso Hacer
		//	verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es correcta
		//	haremos que una variable llamada Login sea verdadera.
		//	? Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un bucle
		//	Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
		//	? Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al men� de
		//	opciones: "Ingresar botellas", "Consultar saldo" y "Salir"
		escribir "ingrese su usuario"
		leer usuario
		escribir "ingrese su contrase�a"
		leer contrasena
		
		si usuario =  "Albus_D" Entonces
			si contrasena  =  "caramelosDeLimon" Entonces
				login = verdadero 
			FinSi
		SiNo
			escribir "el usuario es incorrecto ingrese nuevamente"
			
		FinSi
		c=c+1
	Fin Mientras
	si login = verdadero Entonces
		f=0
		Repetir
			escribir "escoja un opcion"
			escribir "1 - Ingresar botellas" 
			escribir "2 - Consultar saldo"
			escribir "3 - salir"
			leer opci
			
			Segun opci Hacer
				1:
					///"1 - Ingresar botellas"
//					Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema. Una vez
//					que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando cada botella. En
//						cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y 3000 gr, que va a ser el
//						peso de las botellas a reciclar (simulando que el usuario est� ingresando botellas en la
//						m�quina). Una vez generado, seg�n el peso del material, usaremos un condicional m�ltiple
					//					para asignarle un valor monetario:
					
//					Si es menos de 500 gr, corresponden $50
//					? Si es entre 501 gr y 1500 gr, corresponden $125
//					? Si es m�s de 1501 gr, corresponden $200
//					? Hecho esto, el programa debe informar al usuario por pantalla el valor que se le ofrece. Si el
//						usuario acepta, lo acreditamos a su saldo, sino se debe devolver el material (s�lo mostrar en
//							pantalla "Devolviendo material"). Para esto usaremos un condicional doble
					
					escribir "preguntaremos cu�ntas botellas se va a ingresar al sistema"
					leer cantidad
					c1=1
					c2=1
					c3=1
					p1=1
					p2=1
					p3=1
					ValorTotal=0
					Para i <- 1  Hasta cantidad   Hacer
						pesoBotella = Aleatorio(100,3000)
						Escribir "a ingresado una botella de peso ", pesoBotella
						si pesoBotella <= 500	Entonces
							c1=c1+1
							si 		501 <= pesoBotella y pesoBotella  <= 1500
								c2=c2+1
								si pesoBotella >= 1501 Entonces
									c3=c3+1
								FinSi
								
							FinSi
							
						FinSi
						
					Fin Para
					p1=c1*50
					p2=c2*125
					p3=c3*200
					saldo=0
					ValorTotal=p1+p2+p3
					escribir "El valor del material ingresado es: $ ", ValorTotal
					escribir "Acepta el Valor Ofresido"
					Escribir "si/no"
					Leer acepta 
					c4=0
					
						si  acepta = "si" Entonces
							saldo = ValorTotal
							saldototal =ValorTotal + saldo
							c4=c4+1
						SiNo
							si acepta = "no" Entonces
								Escribir "Devolviendo Material "
							FinSi
						FinSi
					
				2:	
					///Consultar saldo
					escribir "Su saldo es: $ ", saldototal
					
						
					
					
				3:
					Escribir "Gracias por utilizar nuestros servicios"
					f=1
				De Otro Modo:
					
			Fin Segun
		Mientras Que f<>1
	FinSi

	
FinAlgoritmo
