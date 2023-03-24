Algoritmo OrdenamientoPalabras
	//Declaración de variable que contiene las palabras entrante
	Definir input_palabra Como Caracter
	//Variable de tipo entero que contiene el tamaño del Arreglo
	Definir largo_array Como Entero
	//Asignación de valor al largo del arreglo
	largo_array <- 100
	//Declaración del arreglo de palabras
	Dimension lista_palabras[largo_array]
	
	
	Escribir "ALGORITMO DE ORDENAMIENTO DE PALABRAS."
	Escribir "[INFO] INGRESA 1 PALABRA Y LUEGO ENTER PARA AGREGARLA A LA LISTA DE ORDENAMIENTO."
	Escribir "[INFO] LIMITE 100 PALABRAS."
	Escribir "[INFO] INGRESA LA PALABRA (FIN) PARA TERMINAR DE AGREGAR LAS PALABRAS."
	input_palabra <- "."
	
	Definir contador_palabras Como Entero
	contador_palabras <- 1
	
	//Agregar palabras al arreglo
	Mientras Longitud(input_palabra) > 0 Hacer
		
		Escribir "[INPUT] INGRESA 1 PALABRA Y LUEGO PRESIONA ENTER"
		Leer input_palabra
		Si Longitud(input_palabra) > 0 & input_palabra <> "FIN"  Entonces
			lista_palabras[contador_palabras] <- input_palabra
			contador_palabras <- contador_palabras + 1
		SiNo
			input_palabra <- ""
		FinSi
	FinMientras
	
	//Ordenamiento de Arreglo
	OrdenarListaDePalabras(lista_palabras,contador_palabras)
	
FinAlgoritmo

//Funcion de ordenamiento de palabras
Funcion OrdenarListaDePalabras(lista, longitudArreglo)
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
	Escribir "[LOG] LISTA ORDENADA DE PALABRAS"
	Para i <- 1 Hasta longitudArreglo
		Escribir lista[i]
	FinPara
FinFuncion

