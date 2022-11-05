""" 2. Faça um programa que receba a temperatura média de cada mês do ano e armazene-
as em uma lista. Após isto, calcule a média anual das temperaturas e mostre todas as
temperaturas acima da média anual, e em que mês elas ocorreram (mostrar o mês
por extenso: 1 – janeiro, 2 – fevereiro, . . .). """


meses = dict()

print("Informe as temperaturas dos meses: ")
meses['Janeiro'] = float(input('Janeiro: '))
meses['Fevereiro'] = float(input('Fevereiro: '))
meses['Março'] = float(input('Março: '))
meses['Abril'] = float(input('Abril: '))
meses['Maio'] = float(input('Maio: '))
meses['Junho'] = float(input('Junho: '))
meses['Julho'] = float(input('Julho '))
meses['Agosto'] = float(input('Agosto: '))
meses['Setembro'] = float(input('Setembro: '))
meses['Outubro'] = float(input('Outubro: '))
meses['Novembro'] = float(input('Novembro: '))
meses['Dezembro'] = float(input('Dezembro: '))

soma = 0
for temperaturas in meses.values():
    soma += temperaturas

media = soma/len(meses)
print(media)


print('Os meses que tiveram maior temperaturas foram de: ', end='')
for mes, temperatura in meses.items():
    if temperatura > media:
        print(mes, '\n', end ='')
