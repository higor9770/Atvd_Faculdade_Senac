class senac:

    def __init__(self):
        print("Escolha uma das opções para acessá-la.")
        print("1 - Mostrar\n2 - Cadastrar\n3 - Alterar\n4 - Deletar")
        escolha = int(input("Escolha: "))

        if escolha == 1:
            self.read()
            # realizar consulta 
       
        elif escolha == 2:
            self.registrar()
            # registrar 
        elif escolha == 3:
            self.deletar()
            # deletar as informações 

        elif escolha == 4:
            self.alterar()
            # alterar as informações 

        elif escolha != 1 or escolha != 2 or escolha != 3 or escolha != 4 or escolha != 5 or escolha != 6:
            self.registrar()
            # caso seja diferente das escolhas o usuário é levado para a função de cadastrar
            
        else:
            print("\nerro!")

    def read(self):
        pass

    def registrar(self):
        print("Escolha uma das opções para acessá-la.")
        print("\n1 - Funcionários\n 2 - Aluno\n 3 - Curso\n 4 - Disciplina")
        escolha2 = int(input("Escolha: "))
        
        if escolha2 == 1:
            # Funcionários 
            print("agora defina qual tipo de funcionário: ")
            print("1 - Profesor\n 2 - Técnico Administrativo")
            escolha3 = int(input("Escolha: "))
            if escolha3 == 1:
                pass
            elif escolha3 == 2:
                pass
            else:
                print("\n\n\nerro!")
                self.registrar()
        elif escolha2 == 2:
            pass
            # Aluno
        elif escolha2 == 3:
            pass
            # Curso 
        elif escolha2 == 4:
            pass
            # Disciplina
        else: 
            self.registrar()

    def deletar(self):
        pass
    # deletar as informações

    def alterar(self):
    # alterar as informações 
        pass


object = senac()
object.read()
object.registrar()
object.deletar()
object.alterar()