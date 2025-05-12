//Hacer un registro de la produccion agricula de una comunidad campesina 

Algoritmo registrodelaproduccionagriculadeunacomunidadcampesina
	
	
	Definir produccion25 Como Real
    Definir I, opcion, numParcelas Como Entero
    Definir baja, media, alta Como Entero
    Definir totalProduccion, promedioProduccion Como Real
    Definir maxProduccion, minProduccion Como Real
    Definir parcelaMax, parcelaMin Como Entero
	
	//men� que permite al usuario seleccionar entre registrar producci�n, mostrar estad�sticas o salir del programa.
    Repetir
        Escribir "Men� de Opciones:"
        Escribir "1. Registrar producci�n"
        Escribir "2. Mostrar estad�sticas"
        Escribir "3. Salir"
        Escribir "Seleccione una opci�n:"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "Ingrese el n�mero de parcelas (m�ximo 25):"
                Leer numParcelas
                Si numParcelas > 25 Entonces
                    Escribir "El n�mero m�ximo de parcelas es 25."
                    numParcelas <- 25
                FinSi
                Para i <- 0 Hasta numParcelas - 1 Hacer
                    Escribir "Ingrese la producci�n (kg) de la parcela ", i + 1, ":"
                    Leer produccionI
                FinPara
            2:
                baja <- 0
                media <- 0
                alta <- 0
                totalProduccion <- 0
                maxProduccion <- -1
                minProduccion <- 999999
                parcelaMax <- 0
                parcelaMin <- 0
				
                Para i <- 0 Hasta numParcelas - 1 Hacer
                    totalProduccion <- totalProduccion + produccionI
                    Si produccionI < 500 Entonces
                        baja <- baja + 1
                    Sino
                        Si produccionI <= 1000 Entonces
                            media <- media + 1
                        Sino
                            alta <- alta + 1
                        FinSi
                    FinSi
                    Si produccionI > maxProduccion Entonces
                        maxProduccion <- produccionI
                        parcelaMax <- i
                    FinSi
                    Si produccionI < minProduccion Entonces
                        minProduccion <- produccionI
                        parcelaMin <- i
                    FinSi
                FinPara
				
                promedioProduccion <- totalProduccion / numParcelas
				//ingresar la producci�n en kilogramos para cada parcela, hasta un m�ximo de 25 parcelas.			
                Escribir "Parcelas con baja producci�n (<500 kg): ", baja
                Escribir "Parcelas con producci�n media (500-1000 kg): ", media
                Escribir "Parcelas con alta producci�n (>1000 kg): ", alta
                Escribir "Parcela con mayor producci�n: Parcela ", parcelaMax + 1, " con ", maxProduccion, " kg"
                Escribir "Parcela con menor producci�n: Parcela ", parcelaMin + 1, " con ", minProduccion, " kg"
                Escribir "Producci�n total: ", totalProduccion, " kg"
                Escribir "Producci�n promedio: ", promedioProduccion, " kg"
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opci�n no v�lida. Por favor, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
	//la opcion 3 es para poder salir del programa 
FinAlgoritmo
