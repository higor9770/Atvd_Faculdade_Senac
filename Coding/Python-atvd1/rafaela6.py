""" Desenvolva um jogo de acerte o número, onde o computador escolhe um número
inteiro aleatório de 0 a 20, e o usuário tem 5 tentativas para adivinhar o número """


import random

print("*"*25)
print('Bem-vindo ao jogo')
print('*'*25)

contador = 1
limite = 5

aleatorio = random.randint(1, 20)  

while contador <= limite:
    numero = int(input('Digite um número: '))
    

    igual = numero == aleatorio
    menor = numero < aleatorio
    maior = numero > aleatorio

    print ('{} tentativas de {} tentativas' .format(contador, limite))
    if(igual):
        print('Parabéns, você acertou!')
        break
    else:
        if(menor):
            print('O numero digitado é menor que o número secreto')
        elif(maior):
            print('O numero digitado é maior que o número secreto')

    if(contador == 5):
        print('Fim da partida')

    contador = contador + 1
