""" Faça um programa que leia um nome de usuário e a sua senha e não aceite a senha
igual ao nome do usuário, mostrando uma mensagem de erro e voltando a pedir as
informações. """


nome = input("digite seu nome de login: ")
senha = input("digite sua senha de login: ")

while senha == nome:
    print("senha igual ao usuário. Por favor, insira uma senha compatível")
    senha = input("digite uma nova senha de login: ")


print("Obrigado!")