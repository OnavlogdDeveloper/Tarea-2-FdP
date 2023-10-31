#definicion de variables
cifras = []
numeros_vistos = [] #aqui se van guardando los resultados en caso de que se repita alguno
numero = ''
NUMERO_INICIAL = 0


numero = input("numero: ") #solicita el numero a definir si es feliz o no
NUMERO_INICIAL = numero #se guarda el numero inicial

while numero != 1:

    for i in str(numero): #se itera en los valores de la variable "numero" i va a ser igual a cada termino
        cifras.append(int(i)**2)  #Se elevan al cuadrado una vez transformada cada cifra en entero y se guardan en la lista "cifras"
        numero = sum(cifras)  #se suma cada cifra
        cifras.clear() #Se limpia la lista para evitar un bucle
    
    if numero in numeros_vistos: #si se repite uno de los valores guardados el numero no es feliz
        print(f"{NUMERO_INICIAL} no es un numero feliz")
        break #si no es un numero feliz se rompe
    numeros_vistos.append(numero) #guarda los resultados en "numeros_vistos"
else: #se puede usar else con while y si numero != 1 se ejecuta lo siguiente
    print(f"{NUMERO_INICIAL} es un numero feliz")
#Me tomó 5 horas hacer esto >:(