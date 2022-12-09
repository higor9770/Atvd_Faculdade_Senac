from conexaoBD import ConexaoDB 

class senac: # criação de classe 

    def __init__(self):
        
        print("\nEscolha uma das opções para acessá-la.\n")
        print("1 - Mostrar\n2 - Cadastrar\n3 - Deletar\n4 - Alterar\n")  # escolha para adentrar ao crud e possibilitar as escolhas informadas
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
        print("\n 1 - Funcionários\n 2 - Aluno\n 3 - Curso\n 4 - Disciplina")
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
                self.read()          # e vai para o inicio da função read´         
            # funcionário
        elif escolha2 == 2:
            pass 
            # aluno
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
            print("Você iniciou um novo cadastro do funcionário! Por favor, insira as informações corretamente.")
            print("Coloque aqui as informações básicas de cada funcionário")
            self.nome = input("Nome: ")
            self.CPF = int(input("CPF:  ")) 
            self.telefone = input("Telefone: ")
            self.salario = int(input("Salário: "))
            self.endereco = input("Endereço: ")
            c = ConexaoDB() # faz a conexão com o banco 
            sql = f"insert into funcionarios (nome, CPF, telefone, salario, endereco) " # define o que será feito na tabela funcionário
            sql += f"values ('{self.nome}','{self.CPF}','{self.telefone}','{self.salario}','{self.endereco}')" # nomeia os campos da tabela os quais os valores serão inseridos
            c.executarDML(sql) # comando que jogo os dados para o banco de dados

            print("Agora especifique qual a ocupação desse novo funcionário: ")
            print("1 - Profesor\n 2 - Técnico Administrativo")
            escolha3 = int(input("Escolha: ")) # escolha para dar acesso as condições dentro de outro if
            if escolha3 == 1:
                # cadastrando especificações do professor
                print("\nPor favor, insira as informações corretamente.\n")
                self.titulacao = input("Titulação: ")
                self.area_formacao = input("\nÁrea de Formação:  ")
                c = ConexaoDB() # faz a conexão com o banco 
                sql = f"insert into professor (titulacao, area_formacao) " # define o que será feito na tabela funcionário
                sql += f"values ('{self.titulacao}','{self.area_formacao}')" # nomeia os campos da tabela os quais os valores serão inseridos
                c.executarDML(sql) # comando que jogo os dados para o banco de dados
                try:
                    c = ConexaoDB()
                    print('Dados inseridos com sucesso!')
                except SystemError as ex:
                    print('Erro de conexão:', ex)
                    
                print("deseja adicionar mais algum funcionário ?")
                escolha4 = int(input("\n1- Adicionar\n 2- finalizar o programa"))
                if escolha4 == 1:
                    self.registrar() # voltar para a função registrar
                else:
                    self.finalizar() # ir para a função de finalizar

            elif escolha3 == 2:
                # cadastrando especificações do tecnico admnistrativo
                print("Por favor, insira as informações corretamente.\n")
                self.setor = input("setor: ")
                c = ConexaoDB() # faz a conexão com o banco 
                sql = f"insert into tec_administrativo (setor) " # define o que será feito na tabela funcionário
                sql += f"values ('{self.setor}')" # nomeia os campos da tabela os quais os valores serão inseridos
                c.executarDML(sql) # comando que jogo os dados para o banco de dados
                try:
                    c = ConexaoDB()
                    print('Dados inseridos com sucesso!')
                except SystemError as ex:
                    print('Erro de conexão:', ex)

                escolha4 = int(input("\n1- Adicionar\n 2- finalizar o programa"))
                if escolha4 == 1:
                    self.registrar() # voltar para a função registrar
                else:
                    self.finalizar() # ir para a função de finalizar 
            else:
                print("\nNúmero errado! Defina a opção que queira visualizar novamente!.\n") # caso for um número diferente de 1 ou 2 printa o erro e 
                self.registrar()     # e vai para o inicio da função registrar

        elif escolha2 == 2:
            # cadastrar aluno
            print("Você iniciou um novo cadastro de aluno! Por favor, insira as informações corretamente.")
            self.nome = input("Nome do aluno: ")
            self.matricula = int(input("matricula:  "))
            self.CPF = int(input("CPF do aluno: "))
            c = ConexaoDB() # faz a conexão com o banco 
            sql = f"insert into aluno (nome, matricula, CPF) " # define o que será feito na tabela funcionário 
            sql += f"values ('{self.nome}','{self.matricula}','{self.CPF}')" # nomeia os campos da tabela os quais os valores serão inseridos
            c.executarDML(sql) # comando que jogo os dados para o banco de dados

        elif escolha2 == 3:
            # cadastrar curso
            print("Você iniciou um novo cadastro de Curso! Por favor, insira as informações corretamente.")
            self.nomeCurso = input("Nome do curso: ")
            self.duracao = int(input("Duração em horas:  ")) 
            c = ConexaoDB() # faz a conexão com o banco 
            sql = f"insert into curso (nomeCurso, duracao)" # define o que será feito na tabela funcionário
            sql += f"values ('{self.nomeCurso}','{self.duracao}')" # nomeia os campos da tabela os quais os valores serão inseridos
            c.executarDML(sql) # comando que jogo os dados para o banco de dados

        elif escolha2 == 4:
            # cadastrar Disciplina
            print("Você iniciou um novo cadastro de Disciplina! Por favor, insira as informações corretamente.")
            self.nomeDisciplina = input("Nome da Disciplina: ")
            self.carga_horaria = int(input("Duração em horas:  ")) 
            c = ConexaoDB() # faz a conexão com o banco 
            sql = f"insert into disciplina (nomeDisciplina, carga_horaria)" # define o que será feito na tabela funcionário 
            sql += f"values ('{self.nomeDisciplina}','{self.carga_horaria}')" # nomeia os campos da tabela os quais os valores serão inseridos
            c.executarDML(sql) # comando que jogo os dados para o banco de dados

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
            print("Aqui você vai deletar as informações dos funcionários")
            print("insira o CPF do funcionário certo para confimação que deseja deletar os dados do funcionário")
            self.CPF = input("CPF: ")
            c = ConexaoDB() # faz a conexão com o banco 
            sql = f"delete from funcionario where CPF='{self.CPF}'" # define o que será feito na tabela funcionário
            c.executarDML(sql) # comando que jogo os dados para o banco de dados
            print("deseja excluir mais algum dado ?")
            escolha4 = int(input("\n1- Deletar\n 2- finalizar o programa"))
            if escolha4 == 1:
                self.deletar() # voltar para a função registrar
            else:
                self.finalizar() # ir para a função de finalizar
            # entra em funcionarios para decidir qual seguir 
            # seja professor ou Tec administrativo 
            print("agora defina qual tipo de funcionário: ")
            print("1 - Profesor\n 2 - Técnico Administrativo")
            escolha3 = int(input("Escolha: ")) # escolha3 para dar acesso as condições dentro de outro if
            if escolha3 == 1:
                pass  # entra em professor 
            elif escolha3 == 2:
                pass # entra em tec administrativo
            else:
                print("\n\n\nerro!") # casso for um número diferente de 1 ou 2 printa o erro e 
                self.deletar()          # e vai para o inicio da função read 
            # funcionário    
        elif escolha2 == 2:
            # Aluno
            print("Aqui você vai deletar os dados de alunos")
            print("Por qual dado deseja deletar:\n 1- Nome\n 2- Matricula\n 3- CPF")
            escolha3 = int(input("opção: "))
            if escolha3 == 1:
                print("insira o nome certo para confimação que deseja deletar seus dados")
                self.nome = input("Nome: ")
                c = ConexaoDB()
                sql = f"delete from aluno where nome='{self.nome}'"
                c.executarDML(sql)
                try:
                    c = ConexaoDB()
                    print('Dados excluidos com sucesso!')
                except SystemError as ex:
                    print('Erro de conexão:', ex)
                    
                print("deseja excluir mais algum dado ?")
                escolha4 = int(input("\n1- Deletar\n 2- finalizar o programa"))
                if escolha4 == 1:
                    self.deletar() # voltar para a função registrar
                else:
                    self.finalizar() # ir para a função de finalizar

            elif escolha3 == 2:
                print("insira o nome certo para confimação que deseja deletar seus dados")
                self.matricula = input("Matricula: ")
                c = ConexaoDB()
                sql = f"delete from aluno where matricula='{self.matricula}'"
                c.executarDML(sql)
                try:
                    c = ConexaoDB()
                    print('Dados excluidos com sucesso!')
                except SystemError as ex:
                    print('Erro de conexão:', ex)
                    
                print("deseja excluir mais algum dado ?")
                escolha4 = int(input("\n1- Deletar\n 2- finalizar o programa"))
                if escolha4 == 1:
                    self.deletar() # voltar para a função registrar
                else:
                    self.finalizar() # ir para a função de finalizar


            elif escolha3 == 3:
                print("insira o nome certo para confimação que deseja deletar seus dados")
                self.CPF = input("CPF: ")
                c = ConexaoDB()
                sql = f"delete from aluno where CPF='{self.CPF}'"
                c.executarDML(sql)
                try:
                    c = ConexaoDB()
                    print('Dados excluidos com sucesso!')
                except SystemError as ex:
                    print('Erro de conexão:', ex)
                    
                print("deseja excluir mais algum dado ?")
                escolha4 = int(input("\n1- Deletar\n 2- finalizar o programa"))
                if escolha4 == 1:
                    self.deletar() # voltar para a função registrar
                else:
                    self.finalizar() # ir para a função de finalizar

            elif escolha3 != 1 or escolha3 != 2 or escolha3 != 3:
                print("\nNúmero errado! Digite um número dentro da escolha.\n")
                self.deletar()

            else: 
                print("erro!")
            # aluno
        elif escolha2 == 3:
            #deletar curso
            print("Aqui você vai deletar os dados de curso")
            print("insira o nome certo para confimação que deseja deletar seus dados")
            self.nomeCurso = input("Nome do curso: ")
            c = ConexaoDB()
            sql = f"delete from curso where nomeCurso='{self.nomeCurso}'"
            c.executarDML(sql)
            try:
                c = ConexaoDB()
                print('Dados excluidos com sucesso!')
            except SystemError as ex:
                print('Erro de conexão:', ex)   
                print("deseja excluir mais algum dado ?")
                escolha4 = int(input("\n1- Deletar\n 2- finalizar o programa"))
                if escolha4 == 1:
                    self.deletar() # voltar para a função registrar
                else:
                    self.finalizar() # ir para a função de finalizar
            # Curso 
        elif escolha2 == 4:
            #deletar curso
            print("Aqui você vai deletar os dados de Disciplina")
            print("insira o nome certo para confimação que deseja deletar seus dados")
            self.nomeDisciplina = input("Nome da Disciplina: ")
            c = ConexaoDB()
            sql = f"delete from disciplina where nomeDisciplina='{self.nomeDisciplina}'"
            c.executarDML(sql)
            try:
                c = ConexaoDB()
                print('Dados excluidos com sucesso!')
            except SystemError as ex:
                print('Erro de conexão:', ex)   
                print("deseja excluir mais algum dado ?")
                escolha4 = int(input("\n1- Deletar\n 2- finalizar o programa"))
                if escolha4 == 1:
                    self.deletar() # voltar para a função registrar
                else:
                    self.finalizar() # ir para a função de finalizar
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
                self.alterar()          # e vai para o inicio da função read
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
        
    def finalizar(self):
        print(">>>>>>>> obriagdo por usar nosso código <<<<<<<<<<<")

object = senac()
object.read()
object.registrar()
object.deletar()
object.alterar()
object.finalizar()