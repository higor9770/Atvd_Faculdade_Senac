""" Faça uma função que computa a potência a b para valores a e b (assuma
números inteiros) passados por parâmetro (não use o operador). """
import math

def potencia(A, B):
    
    print(math.pow(A, B))
    
    
A=int(input("Primeiro número: "))
B=int(input("Segundo número: "))
print(potencia(A, B))

