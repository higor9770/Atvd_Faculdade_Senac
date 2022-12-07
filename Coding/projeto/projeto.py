class senac: # criação de classe 

    def __init__(self):
        
        print("Escolha uma das opções para acessá-la.")
        print("1 - Mostrar\n2 - Cadastrar\n3 - Alterar\n4 - Deletar")  # escolha para adentrar ao crud e possibilitar as escolhas informadas
        escolha1 = int(input("Escolha: ")) # escolha1 para ir dar acesso ao crud 

        if escolha1 == 1:
            self.read()
            # realizar consulta 
       
        elif escolha1 == 2:
            self.registrar()
            # registrar 
        elif escolha1 == 3:
            self.deletar()
            # deletar as informações 

        elif escolha1 == 4:
            self.alterar()
            # alterar as informações 

        elif escolha1 != 1 or escolha1 != 2 or escolha1 != 3 or escolha1 != 4:
            print("\nNúmero errado! Digite um número dentro da escolha.\n")
            self.__init__()
            # caso seja diferente das escolhas o usuário é levado para a função de cadastrar
            
        else:
            print("\nerro!")

    def read(self):
        print("Escolha uma das opções para visualizar")
        print("\n1 - Funcionários\n 2 - Aluno\n 3 - Curso\n 4 - Disciplina")
        escolha2 = int(input("Escolha: ")) # escolha2 para dar acesso as condiçoes 
        
        if escolha2 == 1:
            # entra em funcionarios para decidir qual seguir 
            # seja professor ou Tec administrativo 
            print("agora defina qual tipo de funcionário: ")
            print("1 - Profesor\n 2 - Técnico Administrativo")
            escolha3 = int(input("Escolha: ")) # escolha3 para dar acesso as condições dentro de outro if
            if escolha3 == 1:
                pass # entra em professor 
            elif escolha3 == 2:
                pass # entra em tec administrativo
            else:
                print("\n\n\nerro!") # casso for um número diferente de 1 ou 2 printa o erro e 
                self.read()          # e vai para o inicio da função read
        elif escolha2 == 2:
            pass
            # Aluno
        elif escolha2 == 3:
            pass
            # Curso 
        elif escolha2 == 4:
            pass
            # Disciplina
        elif escolha2 != 1 or escolha2 != 2 or escolha2 != 3 or escolha2 != 4: # define que se tiver um numero diferente desses
            print("\nNúmero errado! Digite um número dentro da escolha.\n")    # ele vai ser reenviado para o inicio da função read
            self.read()                                                        
        else: 
            print("erro!")

    def registrar(self):
        print("Escolha uma das opções para registrar")
        print("\n1 - Funcionários\n 2 - Aluno\n 3 - Curso\n 4 - Disciplina")
        escolha2 = int(input("Escolha: ")) # escolha2 para dar acesso as condiçoes 
        
        if escolha2 == 1:
            # entra em funcionarios para decidir qual seguir 
            # seja professor ou Tec administrativo 
            print("agora defina qual tipo de funcionário: ")
            print("1 - Profesor\n 2 - Técnico Administrativo")
            escolha3 = int(input("Escolha: ")) # escolha3 para dar acesso as condições dentro de outro if
            if escolha3 == 1:
                pass # entra em professor 
            elif escolha3 == 2:
                pass # entra em tec administrativo
            else:
                print("\n\n\nerro!") # casso for um número diferente de 1 ou 2 printa o erro e 
                self.read()          # e vai para o inicio da função read
        elif escolha2 == 2:
            pass
            # Aluno
        elif escolha2 == 3:
            pass
            # Curso 
        elif escolha2 == 4:
            pass
            # Disciplina
        elif escolha2 != 1 or escolha2 != 2 or escolha2 != 3 or escolha2 != 4: # define que se tiver um numero diferente desses
            print("\nNúmero errado! Digite um número dentro da escolha.\n")    # ele vai ser reenviado para o inicio da função registrar
            self.registrar()                                                        
        else: 
            print("erro!")

    def deletar(self):
        print("Escolha uma das opções para deletar")
        print("\n1 - Funcionários\n 2 - Aluno\n 3 - Curso\n 4 - Disciplina")
        escolha2 = int(input("Escolha: "))
        
        if escolha2 == 1:
            print("Escolha uma das opções para visualizar")
        print("\n1 - Funcionários\n 2 - Aluno\n 3 - Curso\n 4 - Disciplina")
        escolha2 = int(input("Escolha: ")) # escolha2 para dar acesso as condiçoes 
        
        if escolha2 == 1:
            # entra em funcionarios para decidir qual seguir 
            # seja professor ou Tec administrativo 
            print("agora defina qual tipo de funcionário: ")
            print("1 - Profesor\n 2 - Técnico Administrativo")
            escolha3 = int(input("Escolha: ")) # escolha3 para dar acesso as condições dentro de outro if
            if escolha3 == 1:
                pass # entra em professor 
            elif escolha3 == 2:
                pass # entra em tec administrativo
            else:
                print("\n\n\nerro!") # casso for um número diferente de 1 ou 2 printa o erro e 
                self.read()          # e vai para o inicio da função read
        elif escolha2 == 2:
            pass
            # Aluno
        elif escolha2 == 3:
            pass
            # Curso 
        elif escolha2 == 4:
            pass
            # Disciplina
        elif escolha2 != 1 or escolha2 != 2 or escolha2 != 3 or escolha2 != 4: # define que se tiver um numero diferente desses
            print("\nNúmero errado! Digite um número dentro da escolha.\n")    # ele vai ser reenviado para o inicio da função deletar
            self.deletar()                                                        
        else: 
            print("erro!")

    def alterar(self):
        print("Escolha uma das opções para alterar")
        print("\n1 - Funcionários\n 2 - Aluno\n 3 - Curso\n 4 - Disciplina")
        escolha2 = int(input("Escolha: ")) # escolha2 para dar acesso as condiçoes 
        
        if escolha2 == 1:
            # entra em funcionarios para decidir qual seguir 
            # seja professor ou Tec administrativo 
            print("agora defina qual tipo de funcionário: ")
            print("1 - Profesor\n 2 - Técnico Administrativo")
            escolha3 = int(input("Escolha: ")) # escolha3 para dar acesso as condições dentro de outro if
            if escolha3 == 1:
                pass # entra em professor 
            elif escolha3 == 2:
                pass # entra em tec administrativo
            else:
                print("\n\n\nerro!") # casso for um número diferente de 1 ou 2 printa o erro e 
                self.read()          # e vai para o inicio da função read
        elif escolha2 == 2:
            pass
            # Aluno
        elif escolha2 == 3:
            pass
            # Curso 
        elif escolha2 == 4:
            pass
            # Disciplina
        elif escolha2 != 1 or escolha2 != 2 or escolha2 != 3 or escolha2 != 4: # define que se tiver um numero diferente desses
            print("\nNúmero errado! Digite um número dentro da escolha.\n")    # ele vai ser reenviado para o inicio da função alterar
            self.alterar()                                                        
        else: 
            print("erro!")

object = senac()
object.read()
object.registrar()
object.deletar()
object.alterar()