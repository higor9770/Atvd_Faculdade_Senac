""" Defina uma função calcularCubo() que recebe um argumento tipo inteiro.
Faça essa função retornar o cubo desse número (ou seja, elevado a 3).
Defina uma segunda função que recebe um argumento tipo inteiro. Se
esse número for divisível por 3, a segunda função deve chamar
calcularCubo() e retornar seu resultado. Caso contrário, a segunda função
deve retornar uma mensagem. """
import math

A = int(input("Primeiro número: "))
B = 3
    
def condicao(A, B):

    if (A % 3 == 0):
        print(calcularCubo(A, B))
    else:
        print("erro!")
        
def calcularCubo(A, B):
    
    print(math.pow(A, B))