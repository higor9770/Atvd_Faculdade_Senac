""" (Desafio) Utilizando listas, faça um programa que faça 5 perguntas para uma pessoa (ou várias pessoas) sobre um crime.
As perguntas são:
1.Telefonou para a vítima no dia do crime?
2: Esteve no local do crime?
3: Mora perto da vítima?
4: Devia dinheiro para a vítima?
5: Já trabalhou com a vítima?
O programa deve no final emitir uma classificação sobre a participação da(s) pessoa(s) no crime.
• Suspeita: 2 questões positivas (sim)
• Cúmplice: entre 3 e 4 questões positivas
• Assassino: 5 questões positivas
• Inocente: menos de 2 questões positivas """


dados = []
print("\nvamos analisar os dados e te dizer se é inocente, suspeito, cúmplice, assassino \n\n\n")
print("\nTelefonou para a vítima no dia do crime?")
print("\nse sim - digite 1")
print("\nse não - digite 0")
tel = int(input("\ndigite o numero correspondete: "))
dados.append(tel)

print("\n\n\nEsteve no local do crime?")
print("\nse sim - digite 1")
print("\nse não - digite 0")
loc = int(input("\ndigite o numero correspondete: "))
dados.append(loc)

print("\n\n\nMora perto da vítima?")
print("\nse sim - digite 1")
print("\nse não - digite 0")
mora = int(input("\ndigite o numero correspondete: "))
dados.append(mora)

print("\n\n\nDevia dinheiro para a vítima?")
print("\nse sim - digite 1")
print("\nse não - digite 0")
dev = int(input("\ndigite o numero correspondete: "))
dados.append(dev)

print("\n\n\nJá trabalhou com a vítima?")
print("\nse sim - digite 1")
print("\nse não - digite 0")
trab = int(input("\ndigite o numero correspondete: "))
dados.append(trab)

soma_respostas = 0
for i in dados: # soma o número de respostas
    soma_respostas += int(i)
if (soma_respostas < 2):
 print("\nInocente")
elif (soma_respostas == 2):
 print("\nSuspeita")
elif (3 <= soma_respostas <= 4):
 print("\nCúmplice")
elif (soma_respostas == 5):
 print("\nAssassino")
else:
    print("erro!")