saldo = 0
saldo_final = 0
repetir_tipo = 0
solicitud_inicial = 0
producto = 0
producto_solicitud = 0
porcentaje_de_descuento = 0

booleano_dos = True
booleano = True
solicitud_final = True
solicitud_producto = True

while booleano == True:
    solicitud_inicial = int(input("seleccione el tipo de producto: 1.Pan, 2.Dulces, 3.Frios y 0.Salir. "))
    if solicitud_inicial == 0: #salir
        print("gracias por venir")
        booleano = False
        break
    
    elif solicitud_inicial == 1: #Tipo pan (1)
        porcentaje_de_descuento = porcentaje_de_descuento + 7
        solicitud_producto = True
        while solicitud_producto == True:
            producto = int(input("seleccione el producto: 1-Pan canilla, 2-Pan de queso, 3-Pan dulce, 4-Pan de Arequipe. "))
            if producto == 1:
                print("usted compró pan canilla por 5$")
                saldo = saldo + 5
                
            elif producto == 2:
                print("usted compro pan de queso por 8$")
                saldo = saldo + 8
            elif producto == 3:
                print("usted compro pan dulce por 5$")
                saldo = saldo + 5
            elif producto == 4:
                print("usted compro pan de arequipe por 7$")
                saldo = saldo + 8
            else:
                print("coloque un valor dentro del rango especificado")
                solicitud_producto = True
            
            booleano_dos = True
            while booleano_dos == True: #preguntar si quieres comprar otro producto del mismo tipo
                producto_solicitud = int(input("¿quieres otro pan? 1.si 2.no"))
                if producto_solicitud == 1:
                    booleano_dos = False
                    solicitud_producto = True
                    break
                elif producto_solicitud == 2:
                    booleano_dos = False
                    solicitud_producto = False
                    break
                else:
                    print("coloque un valor dentro del rango especificado")
                    booleano_dos = True
    
    elif solicitud_inicial == 2: #Tipo dulce (2)
        porcentaje_de_descuento = porcentaje_de_descuento + 12
        solicitud_producto = True
        while solicitud_producto == True:
            producto = int(input("seleccione el producto: 1-Caramelos, 2-Chocolate, 3-Chupetas, 4-Nutella"))
            if producto == 1:
                print("usted compro caramelos por 3$")
                saldo = saldo + 3
            elif producto == 2:
                print("usted compro chocolate por 10$")
                saldo = saldo + 10
            elif producto == 3:
                print("usted compro chupetas por 5$")
                saldo = saldo + 5
            elif producto == 4:
                print("usted compro Nutella por 16$")
                saldo = saldo + 16
            else:
                print("coloque un valor dentro del rango especificado")
                solicitud_producto = True
            
            booleano_dos = True
            while booleano_dos == True: #preguntar si quieres comprar otro producto del mismo tipo
                producto_solicitud = int(input("¿quieres otro dulce? 1.si 2.no"))
                if producto_solicitud == 1:
                    booleano_dos = False
                    solicitud_producto = True
                    break
                elif producto_solicitud == 2:
                    booleano_dos = False
                    solicitud_producto = False
                    break
                else:
                    print("coloque un valor dentro del rango especificado")
                    booleano_dos = True
    
    elif solicitud_inicial == 3: #Tipo frío (3)
        porcentaje_de_descuento = porcentaje_de_descuento + 17
        solicitud_producto = True
        while solicitud_producto == True:
            producto = int(input("seleccione el producto: 1-CocaCola, 2-Pepsicola, 3-Chinotto, 4-Monster, 5-RedBull, 6-2x1 en Monster"))
            if producto == 1:
                print("usted compro CocaCola por 6$")
                saldo = saldo + 6
            elif producto == 2:
                print("usted compro Pepsicola por 7$")
                saldo = saldo + 7
            elif producto == 3:
                print("usted compro Chinotto por 10$")
                saldo = saldo + 10
            elif producto == 4:
                print("usted compro Monster por 16$")
                saldo = saldo + 16
            elif producto == 5:
                print("usted compro RedBull por 12$")
                saldo = saldo + 12
            elif producto == 6:
                print("usted compro 2x1 en Monster por 20$")
                saldo = saldo + 20
            else:
                print("coloque un valor dentro del rango especificado")
                solicitud_producto = True
            
            booleano_dos = True
            while booleano_dos == True: #preguntar si quieres comprar otro producto del mismo tipo
                producto_solicitud = int(input("¿quieres otro producto frio? 1.si 2.no"))
                if producto_solicitud == 1:
                    booleano_dos = False
                    solicitud_producto = True
                    break
                elif producto_solicitud == 2:
                    booleano_dos = False
                    solicitud_producto = False
                    break
                else:
                    print("coloque un valor dentro del rango especificado")
                    booleano_dos = True
    else: #si el valor no es 1,2,3 o 0
        print("ingrese un valor dentro del rango especificado")
        booleano = True
    
    #Aqui solicita si se va a repetir el proceso
    solicitud_final = True
    repetir_tipo = int(input("¿quieres comprar otro tipo de producto? 1-SI 2-NO"))
    while solicitud_final == True:
        if repetir_tipo == 1:
            booleano = True
            solicitud_final = False
        elif repetir_tipo == 2:
            booleano = False
            solicitud_final = False
            break
        else:
            print("coloca un valor dentro del rango especificado")
            solicitud_final = True

#se calculan los valores de saldo y saldo final
saldo_final = saldo - ((saldo * porcentaje_de_descuento) / 100)

if saldo_final > 50:
    saldo_final = saldo_final - ((saldo * 5) / 100) #aqui se aplica el descuento si el saldo final es mayor a 50
    print("Usted tiene un pan de canilla de regalo")
    print(f"su saldo es: {saldo}")
    print(f"su saldo final aplicado el descuento {saldo_final}")
else:
    print(f"su saldo es insuficiente para el descuento del 5%")
    print(f"su saldo es {saldo}")
    print(f"su saldo final es {saldo_final}")
