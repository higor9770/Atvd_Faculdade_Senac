import mysql.connector

class ConexaoDB():
    def __init__(self, host="localhost", user="root", password="", database = "bd"):
        self.host = host
        self.user = user
        self.password = password
        self.db = database

    def conectar(self):
        self.con = mysql.connector.connect(host = self.host,
                                           user = self.user,
                                           password = self.password,
                                           database = self.db)
        self.cur = self.con.cursor()

    def desconectar(self):
        self.con.close()

    def executarDQL(self, sql): 
        self.conectar()
        self.cur.execute(sql)
        resultado = self.cur.fetchall() #retornar todas as linhas
        self.desconectar()
        return print(resultado)

    def executarDML(self, sql):
        self.conectar()
        self.cur.execute(sql)
        self.con.commit() #confirmar alteracao
        self.desconectar()



#// exemplos soltos

from conexaoDB import ConexaoDB
from User import User

c = ConexaoDB()
c.conectar()
u =  User("Nome", 12345)
u.cadastrar()
c.executarDQL("select * from user")
s = User()
s.alterar("Rafaella",12345)
s.excluir('12345')

#CREATE DATABASE bd;
#USE bd;
#CREATE TABLE user(id int(4) AUTO_INCREMENT,
#                    nome varchar(50) NOT NULL,
#                    cpf varchar(11),
#                    PRIMARY KEY (codigo)
#);


// exemplo completo 

from conexaoDB import *


class User:
    def __init__(self, nome = None, cpf = None):
        self.nome = nome 
        self.cpf = cpf

    def cadastrar(self):
        c = ConexaoDB() # faz a conexão com o banco 
        sql = f"insert into user (name, cpf) " # inserir nas tabelas 
        sql += f"values ('{self.nome}','{self.cpf}')" # inserir os dados
        c.executarDML(sql) # executa o comando 


    def alterar(self, nome, cpf):
        c = ConexaoDB() # faz a conexão com o banco 
        sql = f"update user " 
        sql += f"set name ='{nome}' where cpf='{cpf}'"
        c.executarDML(sql)
    
    def excluir(self, cpf):
        c = ConexaoDB()
        sql = f"delete from user where cpf='{cpf}'"
        c.executarDML(sql)

    def consultar(self):
        objetoBD = ConexaoDB()