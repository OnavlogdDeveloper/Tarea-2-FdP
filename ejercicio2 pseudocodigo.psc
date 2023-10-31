Algoritmo Panaderia //inicia el algoritmo
	Definir saldo, repetir_tipo, solicitud_inicial, producto, producto_solicitud, porcentaje_de_descuento Como Entero //Definiendo  Variables Enteras
	Definir booleano, booleano_dos, solicitud_final, solicitud_producto Como Logico // Definiendo Varialbles Logicas
	Definir saldo_final Como Real //Definiendo Variables Reales
	
	booleano <- Verdadero
	porcentaje_de_descuento <- 0
	Mientras booleano == Verdadero Hacer // inicio del proceso, mientras booleano sea falso
		Escribir "Seleccione el tipo de producto: 1.Pan, 2.Dulces, 3.Frios, 0.Salir"
		Leer solicitud_inicial // se selecciona el tipo de producto
		Si solicitud_inicial == 0 Entonces //si es cero termina el mientras y se calcula el saldo final
			Escribir "gracias por venir"
			booleano <- Falso
		SiNo
			Si solicitud_inicial == 1 Entonces //si es uno
				porcentaje_de_descuento = porcentaje_de_descuento + 7 //añade valor al descuento
				solicitud_producto <- Verdadero
				Mientras solicitud_producto == Verdadero Hacer //Mientras "solicitud_producto" sea verdad sigue solicitando productos"
					Escribir "seleccione el producto: 1-Pan canilla, 2-Pan de queso, 3-Pan dulce, 4-Pan de Arequipe. "
					Leer producto //se selecciona el producto
					Si producto == 1 Entonces //si es uno es un pan canilla
						Escribir "usted compro pan canilla por 5$"
						saldo <- saldo + 5 //se añade valor al saldo
					SiNo
						Si producto == 2 Entonces // si es dos un pan de queso
							Escribir "usted compro pan de queso por 8$"
							saldo <- saldo + 8 //se añade valor a "saldo"
						SiNo
							Si producto == 3 Entonces //si es tres un pan dulce
								Escribir "usted compro pan dulce por 5$"
								saldo <- saldo + 5 // se añade valor al saldo
							SiNo
								Si producto == 4 Entonces // si es cuatro pan de arequipe
									Escribir  "usted compro pan de arequipe por 7$"
									saldo <- saldo + 7 // se añade valor al saldo
								SiNo
									Escribir "coloque un valor dentro del rango especificado"
									solicitud_producto <- Verdadero //si el valor no es ninguno de los anterios vuelve a pedir el valor
								FinSi
							FinSi
						FinSi
					FinSi
					
					booleano_dos <- Verdadero
					Mientras booleano_dos == Verdadero Hacer
						Escribir "¿Quieres otro pan? 1.si 2.no" //se solicita si quieres volver a pedir un producto del mismo tipo
						Leer producto_solicitud
						Si producto_solicitud == 1 Entonces // 1 es si, si es 1 vuelve a solictar el producto
							booleano_dos <- Falso
							solicitud_producto <- Verdadero
						SiNo
							Si producto_solicitud == 2 Entonces // 2 es no, si es 2 pregunta si quieres comprar otro tipo de producto
								booleano_dos <- Falso
								solicitud_producto <- Falso
							SiNo // si no es niguno vuelve a hacer la solicitud
								Escribir "coloque un valor dentro del rango especificado"
								booleano_dos <- Verdadero
							FinSi
						FinSi
					FinMientras
				FinMientras
			SiNo
				Si solicitud_inicial == 2 Entonces //si es dos ejecuta el mismo proceso pero con otro tipo de productos y descuentos
					porcentaje_de_descuento = porcentaje_de_descuento + 12 //se añade valor a "porcentaje_de_descuento"
					solicitud_producto <- Verdadero
					Mientras solicitud_producto == Verdadero Hacer //se ejecuta el mismo proceso de arriba
						Escribir "seleccione el producto: 1-Caramelos, 2-Chocolate, 3-Chupetas, 4-Nutella. "
						Leer producto
						Si producto == 1 Entonces // 1 si son caramelos
							Escribir "usted compro caramelos por 3$"
							saldo <- saldo + 3
						SiNo
							Si producto == 2 Entonces // 2 si es chocolate
								Escribir "usted compro chocolate por 10$"
								saldo <- saldo + 10
							SiNo
								Si producto == 3 Entonces // 3 si son chupetas
									Escribir "usted compro chupetas por 5$"
									saldo <- saldo + 5
								SiNo
									Si producto == 4 Entonces // 4 si es una nutella
										Escribir  "usted compro nutella por 16$"
										saldo <- saldo + 16
									SiNo //si no es ninguno se repite el proceso hasta dar un valor de los anteriores
										Escribir "coloque un valor dentro del rango especificado"
										solicitud_producto <- Verdadero
									FinSi
								FinSi
							FinSi
						FinSi
						
						booleano_dos <- Verdadero //mismo proceso de preguntar si quiere un producto del mismo tipo
						Mientras booleano_dos == Verdadero Hacer
							Escribir "¿Quieres otro dulce? 1.si 2.no"
							Leer producto_solicitud
							Si producto_solicitud == 1 Entonces
								booleano_dos <- Falso
								solicitud_producto <- Verdadero
							SiNo
								Si producto_solicitud == 2 Entonces
									booleano_dos <- Falso
									solicitud_producto <- Falso
								SiNo
									Escribir "coloque un valor dentro del rango especificado"
									booleano_dos <- Verdadero
								FinSi
							FinSi
						FinMientras
					FinMientras
				SiNo
					Si solicitud_inicial == 3 Entonces //si es tres se inicia el mismo proceso con productos de tipo frio
						porcentaje_de_descuento <- porcentaje_de_descuento + 17 //esta vez el porcentaje de descuento aumenta 17 veces
						solicitud_producto <- Verdadero
						Mientras solicitud_producto == Verdadero
							Escribir "seleccione el producto: 1-CocaCola, 2-Pepsicola, 3-Chinotto, 4-Monster, 5-RedBull, 6-2x1 en Monster"
							Leer producto
							Si producto == 1 Entonces // 1 es cocacola
								Escribir "usted compro CocaCola por 6$"
								saldo <- saldo + 6
							SiNo
								Si producto == 2 Entonces // 2 es pepsi
									Escribir "usted compro Pepsicola por 7$"
									saldo <- saldo + 7
								SiNo
									Si producto == 3 Entonces //3 es chinotto
										Escribir "usted compro Chinotto por 10$"
										saldo <- saldo + 10
									SiNo
										Si producto == 4 Entonces //4 es una monster
											Escribir "usted compro Monster por 16$"
											saldo <- saldo + 16
										SiNo
											Si producto == 5 Entonces //5 es una redbull
												Escribir "usted compro Redbull por 12$"
												saldo <- saldo + 12
											SiNo
												Si producto == 6 Entonces //6 son dos monster por 20$
													Escribir "usted compro 2x1 en monster por 20$"
													saldo <- saldo + 20
												SiNo
													Escribir "coloque un valor dentro del rango especificado"
													solicitud_producto = Verdadero
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
							
							booleano_dos <- Verdadero //solicita si quieres un producto del mismo tipo de la misma forma que en las de arriba
							Mientras booleano_dos == Verdadero Hacer
								Escribir "¿quieres otro producto frio? 1.si 2.no"
								Leer producto_solicitud
								Si producto_solicitud == 1 Entonces
									booleano_dos <- Falso
									solicitud_producto <- Verdadero
								SiNo
									Si producto_solicitud == 2 Entonces
										booleano_dos <- Falso
										solicitud_producto <- Falso
									SiNo
										Escribir "coloque un valor dentro del rango especificado"
										booleano_dos <- Verdadero
									FinSi
								FinSi
							FinMientras
						FinMientras
					FinSi
				FinSi
			FinSi
		Fin SI
		
		solicitud_final <- Verdadero //al fianlizar de escojer los productos pregunta si quieres otro tipo
		Escribir "¿quieres comprar otro tipo de producto? 1.si 2.no" //aqui te pregunta
		Leer repetir_tipo //aqui se responde
		Mientras solicitud_final == Verdadero Hacer
			Si repetir_tipo == 1 Entonces //si es 1 (si), vuelve a preguntar el tipo de producto que deseas
				booleano <- Verdadero
				solicitud_final <- Falso
			SiNo
				Si repetir_tipo == 2 Entonces //si es 2 (no), termina el proceso y calcula el resultado final
					booleano <- Falso
					solicitud_final <- Falso
				SiNo // si no es ninguno vuelve a preguntar
					Escribir "coloque un valor dentro del rango especificado"
					solicitud_final <- Verdadero
				FinSi
			FinSi
		FinMientras
	FinMientras
	
	//calculo del saldo y saldo final:
	//a medida que vas respondiendo las preguntas anteriores, el saldo y el porcentaje de descuento se almacenan en variables y luego se utilizan
	//en el siguente proceso 
	
	saldo_final <- saldo - ((saldo * porcentaje_de_descuento) / 100) //calcula el valor del saldo final
	
	Si saldo_final > 50 Entonces //si el valor del saldo final es mayor a 50
		saldo_final <- saldo_final - ((saldo * 5) / 100) //al saldo final se le resta el 5% del saldo original
		Escribir "Usted tiene un pan de canilla de regalo"
		Escribir "su saldo es: " saldo
		Escribir "su saldo final aplicado el descuento: " saldo_final //al final muestra los datos
	SiNo //si no se cumple el valor de arriba, arroja los resultados sin realizar ningún proceso
		Escribir "su saldo es insuficiente para el descuento del 5%"
		Escribir "su saldo es: " saldo
		Escribir "su saldo final es: " saldo_final
	FinSi
FinAlgoritmo //termina el algoritmo