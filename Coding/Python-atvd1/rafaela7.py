""" Palíndromo. Um palíndromo é uma sequência de caracteres cuja leitura é idêntica se
feita da direita para esquerda ou vice-versa. Por exemplo: OSSO e OVO são
palíndromos. Em textos mais complexos os espaços e pontuação são ignorados. A
fras SUBI NO ONIBUS é o exemplo de uma frase palíndroma onde os espaços foram
ignorados. Faça um programa que leia uma sequência de caracteres, mostre-a e diga
se é um palíndromo ou não. """



frase = input("digite uma frase: ").replace(' ','')
print(frase)

fraseInvertida =  frase [::-1]
print(fraseInvertida)

if frase == fraseInvertida:
    print("está frase é um palíndromo")
else: 
    print("essa frase não é um palindromo")