""" 3. Faça um Programa que leia 4 notas, mostre as notas e a média. """


nota1 = float(input("digite sua primeira nota: "))
nota2 = float(input("digite sua segunda nota: "))
nota3 = float(input("digite sua terceira nota: "))
nota4 = float(input("digite sua quarta nota: "))

soma = nota1 + nota2 + nota3 + nota4
media = soma/4

print('primeira nota: ',nota1)
print('segunda nota: ',nota2)
print('terceira nota: ',nota3)
print('quarta nota: ',nota4)
print('A média do aluno fo: ', media)