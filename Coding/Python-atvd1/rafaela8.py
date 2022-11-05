""" Desenvolva um jogo de acerte o número, onde o computador escolhe um número
inteiro aleatório de 0 a 20, e o usuário tem 5 tentativas para adivinhar o número """


import random

print("*"*25)
print('Bem-vindo ao jogo')
print('*'*25)

contador = 1
limite = 5

palavras = 'TESTE','PROGRAMA','SHOW','OVO','VIVAOLINUX','PYTHON','LUCAS','LINUX','LIMOSINE','FERRARI','CAMARO','BRANCO','PESQUISAR'
sorteado = random.choice(palavras)
embaralha = random.sample(sorteado, len(sorteado))
palavra_embaralhada = ''.join(embaralha)
print(palavra_embaralhada)


while contador <= limite:
    tentativa = input('Digite a palavra correta : ')
    
    igual = tentativa == sorteado
    diferente = tentativa != sorteado

    print ('{} tentativas de {} tentativas' .format(contador, limite))
    if(igual):
        print('Parabéns, você acertou!')
        break
    else:
        print("A palavra é diferente!")

    if(contador == 5):
        print('Fim da partida')

    contador = contador + 1