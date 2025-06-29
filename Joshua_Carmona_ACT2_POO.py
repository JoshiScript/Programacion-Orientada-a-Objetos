# Mensaje de bienvenida
print("Bienvenido al registro de la Fuerza Civil de Nuevo Leon")

#Se crea la clase para el funcionamiento del programa
class SolicitarDatos:

    # Datos iniciales de variables 
    Anios = 0
    TotDocumentos = 0
    EstMinima = 0

    # Se solicita al usuario ingresar la informacion mediante un constructor y metodos
    def __init__(self):    
        # Atributos que se recopilaran y usaran mas adelante
        self.Nombre = input("Ingrese su primer nombre: ")
        self.ApPaterno = input("Ingrese su apellido paterno: ")
        self.ApMaterno = input("Ingrese su apellido materno: ")
        self.Email = input("Ingrese su correo electronico: ")
        self.Sexo = input("Ingrese su sexo (Hombre/Mujer): ")
        self.Edad = int(input("¿Que edad tiene?: "))
        self.Estatura = float(input("¿Cual es su estatura?: "))
        self.Antecedentes = input("¿Cuenta con antecedentes penales? (si/no): ")
        self.Tatuajes = input("¿Cuenta con tatuajes en zonas visibles? (si/no): ")

    # Se le pregunta al usuario cuantos de los documentos requeridos tiene
        print("¿Con cuantos de los siguientes documentos cuenta?")
        print("Acta Nacimiento, INE, CURP, RFC, Cartilla Militar, Comprobante Domicilio, Certificado Preparatoria, Buro credito")
        self.NumDocumentos = int(input())

    # A partir del sexo del usuario, se establece una funcion para decidir si tiene la altura minima
        if self.Sexo == "Hombre":
            self.EstMinima = 1.65
        else:
            self.EstMinima = 1.55

    # Se cuentan los documentos necesarios
        for x in range(self.NumDocumentos, 8, 1):
            self.TotDocumentos = self.TotDocumentos + 1
        print("A usted le faltan ", self.TotDocumentos, " documentos")

    # Validacion de requisitos
        if self.Edad >= 19 and self.Edad <= 35:
            if self.Estatura >= self.EstMinima:
                if self.Antecedentes == "no":
                    if self.Tatuajes == "no":
                        if self.NumDocumentos == 8:
                            print(self.Nombre, self.ApPaterno, self.ApMaterno, "le informamos que cumple con todos los requisitos solicitados")
                            print("le enviaremos informacion a su correo electronico: ", self.Email, "para realizar los pasos finales del registro")
                            print("Nota: Recuerde que debe llevar a cabo procesos de evaluacion de salud fisica, mental, control y confianza")
                            print("Gracias por ayudar a Nuevo Leon ser mas seguro!!")
                            # Ponte nuevo!! Ponte leon!! Aqui es donde acaba el programa como tal :)
                        else:
                            print("Asegurese que cuente con todos los documentos solicitados")
                    else: 
                        print("No se permiten tatuajes en zonas visibles")
                else: 
                    print("No debe tener antecedentes penales")
            else: 
                print("Su estatura minima debe ser de ", self.EstMinima)
        else: 
            if self.Edad < 19:
                while self.Edad < 19:
                    self.Edad = self.Edad + 1
                    self.Anios = self.Anios + 1
                print("Usted es menor de edad, por favor espere ", self.Anios, " años antes de inscribirse")
            elif self.Edad > 35:
                print("Personas mayores de 35 no pueden registrarse")

# Se crea un objeto para instanciarse y usar la clase
Iniciar = SolicitarDatos()

# Programa hecho por Joshua Carmona - 87733 (Programacion Orientada a Objetos - Act 2) 29/06/2025