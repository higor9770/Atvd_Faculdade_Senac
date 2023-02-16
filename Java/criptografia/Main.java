
/* Faça um programa que encriptografa uma string usando tecnica de criptografia cifra de cesar.
O programa deverá solicitar ao usuário uma string para ser encriptografada e uma chave (valor inteiro)
que correspode ao deslocamento de caracteres, e deverá imprimir na rela a string criptografada */

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

            Scanner ler = new Scanner(System.in);

            String texto, FraseCriptografada, FraseDescriptografada;
            int chave;

            System.out.printf("Informe um texto:\n"); // pede ao usuário um texto
            texto = ler.nextLine(); // insere o texto
            System.out.printf("\nInforme uma chave de criptografia:\n"); // pede ao usuário uma chave para criptografar
            chave = ler.nextInt(); // insere o valor da cifra

            FraseCriptografada = criptografa(texto, chave); // referência a classe criptografa
            FraseDescriptografada = descriptografa(FraseCriptografada, chave); // referência a classe descriptografa

            System.out.printf("\nTexto criptografado:\n");
            System.out.printf("%s", FraseCriptografada);

            System.out.printf("\n\nTexto descriptografado:\n");
            System.out.printf("%s\n", FraseDescriptografada);

        }
        public static String criptografa(String texto, int chave) {
            int i, n = texto.length();
            String embaralha = "";

            for (i=0; i<n; i++) {
                embaralha = embaralha + (char)(texto.charAt(i) + chave);
            }
            return(embaralha);
        }

        public static String descriptografa(String texto, int chave) {
            int i, n = texto.length();
            String desembaralha = "";

            for (i=0; i<n; i++) {
                desembaralha = desembaralha + (char)(texto.charAt(i) - chave);
            }
            return(desembaralha);
        }
    }

