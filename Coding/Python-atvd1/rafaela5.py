""" Faça um programa que leia 5 números e informe o maior número. """


num = int(input("digite o primeiro número: "))
num2 = int(input("digite o segundo número: "))
num3 = int(input("digite o terceiro número: "))
num4 = int(input("digite o quarto número: "))
num5 = int(input("digite o quinto número: "))

if (num > num2) and (num > num3) and (num > num4) and (num > num5):
    print("o primeiro número é maior")
elif (num2 > num) and (num2 > num3) and (num2 > num4) and (num2 > num5):
    print("o segundo número é maior")
elif (num3 > num) and (num3 > num2) and (num3 > num4) and (num3 > num5):
    print("o terceiro número é maior")
elif (num4 > num) and (num4 > num2) and (num4 > num3) and (num4 > num5):
    print("o quarto número é maior")
elif (num5 > num) and (num5 > num2) and (num5 > num3) and (num5 > num4):
    print("o quinto número é maior")
else: 
    print("erro!")


