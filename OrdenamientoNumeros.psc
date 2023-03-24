Algoritmo OrdenamientoNumeros
	//Declaración de variable que contiene las palabras entrante
	Definir input_numero Como Entero
	//Variable de tipo entero que contiene el tamaño del Arreglo
	Definir largo_array Como Entero
	//Asignación de valor al largo del arreglo
	largo_array <- 100
	//Declaración del arreglo de palabras
	Dimension lista_numeros[largo_array]
	
	
	Escribir "ALGORITMO DE ORDENAMIENTO DE PALABRAS."
	Escribir "[INFO] INGRESA UN NÚMERO Y LUEGO ENTER PARA AGREGARLA A LA LISTA DE ORDENAMIENTO."
	Escribir "[INFO] LIMITE 100 NÚMEROS."
	Escribir "[INFO] INGRESA EL NUMERO 0 PARA TERMINAR AGREGAR LOS NUMEROS"
	input_numero <- 1
	
	Definir contador_numeros Como Entero
	contador_numeros <- 1
	
	//Agregar palabras al arreglo
	Mientras input_numero > 0 Hacer
		
		Escribir "[INPUT] INGRESA 1 PALABRA Y LUEGO PRESIONA ENTER"
		Leer input_numero
		Si input_numero > 0 Entonces
			lista_numeros[contador_numeros] <- input_numero
			contador_numeros <- contador_numeros + 1
		SiNo
			input_numero <- 0
		FinSi
	FinMientras
	
	//Ordenamiento de Arreglo
	OrdenarListaDeNumeros(lista_numeros,contador_numeros)
	
FinAlgoritmo

//Funcion de ordenamiento de palabras
Funcion OrdenarListaDeNumeros(lista, longitudArreglo)
	//Definir una varlable que contenga en index del valor siguiente del valor i
	Definir item_menor_lista_index Como Entero
	
	//Iniciar un ciclo principal que recorra todas las palabras
	Para i <- 1 Hasta longitudArreglo -1
		item_menor_lista_index <- i
		//Ciclo que obtiene encuentra la palabra menor alfabericamente de la palabra con el index i actual
		Para j <- i + 1 Hasta longitudArreglo
			Si lista[j] < lista[item_menor_lista_index] Entonces
				item_menor_lista_index <- j
			FinSi
		FinPara
		//Variable auxiliar para almacenar la palabra del index i actual
		auxiliar_objeto_cadena_index <- lista[i]
		//asignar la palabra menor al index actual al index i actual del arreglo
		lista[i] <- lista[item_menor_lista_index]
		//Asignar el valor guardado del index i actual al valor j para reemplazar el valor repetido ya que fue asignado al index i actual
		lista[item_menor_lista_index] <- auxiliar_objeto_cadena_index
	FinPara
	
	//Impresion de Lista
	ImpresionLista(lista,longitudArreglo)
FinFuncion

Funcion ImpresionLista(lista,longitudArreglo)
	Escribir "[LOG] LISTA ORDENADA DE NUMEROS"
	Para i <- 1 Hasta longitudArreglo
		Escribir lista[i]
	FinPara
FinFuncion