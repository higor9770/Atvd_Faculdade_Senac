""" 10. Faça um Programa que peça os 3 lados de um triângulo. O programa deverá informar
se os valores podem ser um triângulo. Indique, caso os lados formem um triângulo,
se ele é: equilátero, isósceles ou escaleno. Dicas:
i) Três lados formam um triângulo quando a soma de quaisquer dois lados for
maior que o terceiro;
ii) Triângulo Equilátero: três lados iguais;
iii) Triângulo Isósceles: quaisquer dois lados iguais;
iv) Triângulo Escaleno: três lados diferentes; """

from ast import Break


criterio = 0 
count = 0
while (criterio == 0):
        lado1= int(input("digite o primeiro lado: "))
        print(lado1)
        lado2= int(input("digite o segundo lado: "))
        print(lado2)
        lado3= int(input("digite o terceiro lado: "))
        print(lado3)
        if (lado1 + lado2 > lado3) and (lado2 + lado3 > lado1) and (lado3 + lado1 > lado2):
            print("temos uma tringulo")
        else:
            count = count + 1
            print("isso não é um triangulo")
        criterio2 = int(input("vice deseja parar? (sim -1); (não -2): "))
        if (criterio2 == 1):
            print("sistema finalizado")
            criterio = 1

print(count)