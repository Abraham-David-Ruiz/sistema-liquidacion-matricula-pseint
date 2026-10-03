Algoritmo Sistema_Basico_De_Liquidacion_De_Matricula_Estudiantil
	
	//-------------------------------------
	// 1. DECLARACIÓN DE CONSTANTES
	//-------------------------------------
	
	Definir PORCENTAJE_MINIMO_DE_ASISTENCIA Como Real;
	PORCENTAJE_MINIMO_DE_ASISTENCIA <- 80;
	
	Definir NUMERO_MINIMO_DE_CREDITOS_NECESARIOS Como Entero;
	NUMERO_MINIMO_DE_CREDITOS_NECESARIOS <- 12;

	
	//-------------------------------------
	// 2. DECLARACION DE VARIABLES
	//-------------------------------------
	
	Definir Nombre_Del_Estudiante Como caracter ;
	
	Definir Programa_Academico Como Caracter;
	
	Definir Numero_De_Creditos_Matriculados Como Entero;
	
	Definir Valor_De_La_Matricula Como Real ;
	
	Definir Valor_Del_Credito_Academico Como real;
	
	Definir Porcentaje_De_Descuento_Otorgado_Al_Estudiante Como Real;
	
	Definir Valor_Del_Descuento Como Real ;
	
	Definir Numero_De_Creditos_Adicionales como entero;
	
	Definir Valor_Total_A_Pagar_De_La_Liquidacion Como Real;
	
	Definir Porcentaje_De_Asistencia_Registrada Como Real;
	
	Definir Cumple_Asistencia Como Logico ;
	
	Definir Cumple_Requisitos Como logico;
	
	//-------------------------------------
	// 3. ENTRADA DE DATOS
	//-------------------------------------
	
	Escribir "Nombre del estudiante" ;
	Leer Nombre_Del_Estudiante ;
	
	Escribir "Programa del estudiante" ;
	Leer Programa_Academico ;
	
	Escribir "Número de creditos matriculados" ;
	Leer Numero_De_Creditos_Matriculados ;
	
	Escribir "Valor de su credito academico" ;
	Leer Valor_Del_Credito_Academico ;
	
	Escribir "Porcentaje de descuento otorgado al estudiante" ;
	Leer Porcentaje_De_Descuento_Otorgado_al_Estudiante  ;
	
	Escribir "Número de creditos adicionales"  ;
	Leer Numero_De_Creditos_Adicionales ;
	
	Escribir "Porcentaje de asistencia Registrado del estudiante" ;
	Leer Porcentaje_De_Asistencia_Registrada ;
	
	//-------------------------------------
	// 4. OPERACIONES BOOLEANAS
	//-------------------------------------
	
    Cumple_Asistencia <- Porcentaje_De_Asistencia_Registrada >= PORCENTAJE_MINIMO_DE_ASISTENCIA;
	
	Cumple_Requisitos <- Cumple_Asistencia Y (Numero_De_Creditos_Matriculados >= NUMERO_MINIMO_DE_CREDITOS_NECESARIOS);

	Valor_De_La_Matricula<- Numero_De_Creditos_Matriculados*Valor_Del_Credito_Academico ;
	
	Porcentaje_De_Descuento_Otorgado_al_Estudiante <-(Porcentaje_De_Descuento_Otorgado_al_Estudiante/100) ;
	
	Valor_Del_Descuento <- Valor_De_La_Matricula*Porcentaje_De_Descuento_Otorgado_al_Estudiante ;
	
	Valor_Total_A_Pagar_De_La_Liquidacion <- Valor_De_La_Matricula-Valor_Del_Descuento ;
	
	
	//--------------------------------------
	// 5. SALIDA DE DATOS
	//--------------------------------------
	
    Escribir "----------------------------------------------------------" ;
    Escribir "       INFORMACIÓN DEL ESTUDIANTE" ;
	
    Escribir "Nombre del Estudiante: ", Nombre_Del_Estudiante ;
    Escribir "Programa del Estudiante: ", Programa_Academico ;
	Escribir "Valor de un credito: " , Valor_Del_Credito_Academico ;
	Escribir "Creditos Matriculados: " , Numero_De_Creditos_Matriculados ;
	Escribir "Creditos adicionales: " , Numero_De_Creditos_Adicionales ;
	
    Escribir "----------------------------------------------------------" ;

	Escribir "Asistencia del estudiante: ", Porcentaje_De_Asistencia_Registrada, "%" ;
    Escribir "¿Cumple con el porcentaje mínimo de asistencia?: ", Cumple_Asistencia;
    Escribir "¿Cumple los requisitos de liquidacion?: ", Cumple_Requisitos;
	Escribir "Valor sin Descuento de la matricula: " , Valor_De_La_Matricula ;
	Escribir "Valor del descuento: " , Valor_Del_Descuento ;
	Escribir "porcentaje de descuento: " , Porcentaje_De_Descuento_Otorgado_al_Estudiante*100 ,"%" ;
	Escribir "Valor total de la liquidacion a pagar: " , Valor_Total_A_Pagar_De_La_Liquidacion ;
	Escribir "----------------------------------------------------------" ;
	

FinAlgoritmo
