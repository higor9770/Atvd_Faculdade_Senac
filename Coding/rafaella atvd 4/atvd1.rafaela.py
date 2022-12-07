""" Use uma função que receba um valor n inteiro e imprima até a n-ésima
linha para um n informado pelo usuário. """

n = int(input('Digite um número: '))

def enes(n):
    for c in range(1, n + 1):
        cont = 1
        while True:
            print(c, end=' ')
            if cont == c:
                break
            cont += 1
        print()
    
enes(n)