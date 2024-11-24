algoritmo "Calculadora Cientifica"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi

// Definicao das Funcoes de Operacoes Matematicas
funcao adicao(x, y: real): real
inicio
   retorne x + y
fimfuncao

funcao subtracao(a, b: real): real
inicio
   retorne a - b
fimfuncao

funcao multiplicacao(a, b: real): real
inicio
   retorne a * b
fimfuncao

funcao divisao(a, b: real): real
inicio
   retorne a / b
fimfuncao

funcao concatenar(str1, str2: caracter): caracter
inicio
   retorne str1 + str2
fimfuncao

// Funcoes auxiliares para leitura
procedimento leiaNumeros(var a, b: real)
inicio
   escreva("Digite o primeiro numero: ")
   leia(a)
   escreva("Digite o segundo numero: ")
   leia(b)
fimprocedimento

procedimento leiaNumeroUnico(var x: real)
inicio
   escreval("Entre com o primeiro numero: ")
   leia(x)
fimprocedimento

procedimento leiaString(var x, y: caracter)
inicio
   escreval("Entre com a primeira palavra: ")
   leia(x)
   escreval("Entre com a segunda palavra: ")
   leia(y)
fimprocedimento

procedimento raiz(var n, r: real)
var
   x: real
inicio
   x <- n / 2
   repita
      r <- x
      x <- (x + n / x) / 2
   ate (abs(x - r) < 0.00001)
fimprocedimento

procedimento segundoGrau
var
   delta, raizDelta: real
inicio
   escreva("Entre com o primeiro numero (A): ")
   leia(a)
   escreva("Entre com o segundo numero (B): ")
   leia(b)
   escreva("Entre com o terceiro numero (C): ")
   leia(c)

   delta <- b * b - 4 * a * c

   se (delta < 0) entao
      escreval("Delta: ", delta, " Esta equacao nao possui raizes reais.")
   senao
      raiz(delta, raizDelta) // calcula a raiz quadrada de delta
      se (delta = 0) entao
         escreval("Delta: ", delta, " Esta equacao possui duas raizes reais iguais.")
      senao
         escreval("x1 = ", int((-1 * b + raizDelta) / (2 * a)))
         escreval("x2 = ", int((-1 * b - raizDelta) / (2 * a)))
      fimse
   fimse
fimprocedimento

procedimento sjuros()
var
   x, y, z, juros, total: real
inicio
   escreval("Entre com o Capital: ")
   leia(x)
   escreval("Entre com a taxa de juros (ao ano): ")
   leia(y)
   escreval("Entre com o tempo (ao ano): ")
   leia(z)

   juros <- x*(y/100)*z
   total <- juros + x
   escreval("Total do montante:", total)
fimprocedimento

procedimento cjuros()
var
   x, y, z, montante: real
inicio
   escreval("Entre com o Capital inicial: ")
   leia(x)
   escreval("Entre com a taxa aplicada de juros compostos(em %): ")
   leia(y)
   escreval("Entre com o quantidade de vezes que os juros serao aplicados: ")
   leia(z)

   montante <- x * ((1+(y/100))^z)
   escreval("o total do montante:", montante)
fimprocedimento

procedimento bindec()
var
   binarioInput: caractere
   i, tamanhoInput, valorImaginario, valorDecimal: inteiro
   binarioInvertido: caractere
   valido: logico
inicio
   escreval("Digite um valor binário:")
   leia(binarioInput)

   // Validando se o valor é um número binário
   valido <- verdadeiro
   tamanhoInput <- compr(binarioInput)
   para i de 1 até tamanhoInput faca
      se (copia(binarioInput, i, 1) < "0") ou (copia(binarioInput, i, 1) > "1") então
         valido <- falso
         interrompa
      fimse
   fimpara

   se valido = falso então
      escreval("Erro: O valor digitado não é um número binário válido.")
   senao
      // Convertendo o binário para decimal
      valorImaginario <- 1
      valorDecimal <- 0
      para i de tamanhoInput até 1 passo -1 faca
         binarioInvertido <- copia(binarioInput, i, 1)
         se binarioInvertido = "1" então
            valorDecimal <- valorDecimal + valorImaginario
         fimse
         valorImaginario <- valorImaginario * 2
      fimpara

      escreval("O número binário ", binarioInput, " é ", valorDecimal, " em numeração decimal.")
   fimse
fimprocedimento


procedimento decbin()
var
   num, valor, digito: inteiro
   resultado: caractere
   numTexto: caractere
   valido: logico
   i, tamanho: inteiro
inicio
   escreval("Digite um número Decimal: ")
   leia(numTexto)

   // Validando se a entrada é numérica
   valido <- verdadeiro
   tamanho <- compr(numTexto)
   para i de 1 ate tamanho faca
      se (copia(numTexto, i, 1) < "0") ou (copia(numTexto, i, 1) > "9") entao
         valido <- falso
         interrompa
      fimse
   fimpara

   se valido = falso então
      escreval("Erro: O número digitado não é um número decimal válido.")
   senao
      // Convertendo o texto para número inteiro
      num <- 0
      para i de 1 ate tamanho faca
         num <- num * 10 + (asc(copia(numTexto, i, 1)) - asc("0"))
      fimpara

      valor <- num
      resultado <- ""

      // Decimal para Binário
      enquanto (num > 0) faca
         digito <- num mod 2
         se digito = 0 entao
            resultado <- "0" + resultado
         senao
            resultado <- "1" + resultado
         fimse
         num <- num div 2
      fimenquanto

      se resultado = "" entao
         resultado <- "0" // Caso o número seja zero
      fimse

      escreval("O número: ", valor, " Decimal será: ", resultado, " em Binário")
   fimse
fimprocedimento


procedimento binoct()
var
   valorTexto: caractere
   valor, octal, base, decimal, expoente, digito: real
   tamanho, i: inteiro
   valido: logico
inicio
   escreva("Digite o número binário: ")
   leia(valorTexto)

   // Validando se o número é binário
   valido <- verdadeiro
   tamanho <- compr(valorTexto)
   para i de 1 ate tamanho faca
      se (copia(valorTexto, i, 1) < "0") ou (copia(valorTexto, i, 1) > "1") entao
         valido <- falso
         interrompa
      fimse
   fimpara

   se valido = falso entao
      escreval("Erro: O número digitado não é binário válido.")
      senao
      // Convertendo o texto para número real
   valor <- 0
   para i de 1 ate tamanho faca
      valor <- valor * 10 + (asc(copia(valorTexto, i, 1)) - asc("0"))
   fimpara

   // BINÁRIO PARA DECIMAL
   decimal <- 0
   base <- 2
   expoente <- 0
   enquanto (valor >= 1) faca
      digito <- valor % 10
      decimal <- decimal + (digito * (base ^ expoente))
      valor <- valor / 10
      expoente <- expoente + 1
   fimenquanto

   // DECIMAL PARA OCTAL
   octal <- 0
   expoente <- 0
   enquanto (decimal >= 1) faca
      digito <- decimal % 8
      octal <- octal + (digito * (10 ^ expoente))
      decimal <- decimal / 8
      expoente <- expoente + 1
   fimenquanto

   // Exibe o número convertido
   escreval("O número binário em octal é: ", octal)
   fimse
fimprocedimento

procedimento Octbin()
var
   octal, decimal, binario, base, expoente, digito: real
   octalTexto: caractere
   tamanho, i: inteiro
   valido: logico
inicio
   escreva("Digite o número octal: ")
   leia(octalTexto)

   // Validando se o número é octal
   valido <- verdadeiro
   tamanho <- compr(octalTexto)
   para i de 1 ate tamanho faca
      se (copia(octalTexto, i, 1) < "0") ou (copia(octalTexto, i, 1) > "7") entao
         valido <- falso
         interrompa
      fimse
   fimpara

   se valido = falso entao
      escreval("Erro: O número digitado não é octal válido.")
      senao
      // Convertendo o número octal para decimal
   decimal <- 0
   expoente <- 0
   base <- 8
   para i de tamanho ate 1 passo -1 faca
      digito <-  asc(copia(octalTexto, i, 1)) - asc("0")
      decimal <- decimal + (digito * (base ^ expoente))
      expoente <- expoente + 1
   fimpara

   // Convertendo o número decimal para binário
   binario <- 0
   expoente <- 0
   base <- 2
   enquanto (decimal >= 1) faca
      digito <- decimal % 2
      binario <- binario + (digito * (10 ^ expoente))
      decimal <- decimal / 2
      expoente <- expoente + 1
   fimenquanto

   // Exibe o número convertido
   escreval("O número octal em binário é: ", binario)
   fimse


fimprocedimento




procedimento binhex()
var
   binario, hexadecimal, caract: caractere
   decimal, digito, tamanho, valor_hex: inteiro
inicio
   escreva("Digite o número binário: ")
   leia(binario)

   // Convertendo binário para decimal
   decimal <- 0
   tamanho <- compr(binario)
   para i de 1 até tamanho faça
      caract <- copia(binario, i, 1) // Extrai o caractere
      digito <- asc(caract) - 48 // Converte caractere para número
      se (digito <> 0) e (digito <> 1) entao
         escreval("Erro: O número contém dígitos que não são binários (0 ou 1).")
         retorne
      fimse
      decimal <- decimal * 2 + digito
   fimpara

   // Convertendo decimal para hexadecimal
   hexadecimal <- ""
   enquanto decimal > 0 faça
      valor_hex <- decimal mod 16
      se valor_hex < 10 então
         caract <- carac(valor_hex + 48) // Dígito 0-9
      senão
         caract <- carac(valor_hex + 55) // Letra A-F
      fimse
      hexadecimal <- caract + hexadecimal
      decimal <- decimal div 16
   fimenquanto

   // Trata caso especial para binário 0
   se hexadecimal = "" então
      hexadecimal <- "0"
   fimse

   escreval("O número binário em hexadecimal é: ", hexadecimal)
fimprocedimento



procedimento hexbin()
var
   hexadecimal, binario, caract: caractere // Armazena os valores intermediários e o resultado
   i, tamanho: inteiro
inicio
   escreva("Digite o número hexadecimal: ")
   leia(hexadecimal)

   binario <- "" // Inicializa o resultado binário como vazio
   tamanho <- compr(hexadecimal) // Obtém o tamanho do número hexadecimal

   // Processa cada caractere do número hexadecimal
   para i de 1 até tamanho faça
      caract <- copia(hexadecimal, i, 1) // Extrai o caractere na posição i
      caract <- maiusc(caract)
      escolha caract
         caso "0"
              binario <- binario + "0000"
         caso "1"
              binario <- binario + "0001"
         caso "2"
              binario <- binario + "0010"
         caso "3"
              binario <- binario + "0011"
         caso "4"
              binario <- binario + "0100"
         caso "5"
              binario <- binario + "0101"
         caso "6"
              binario <- binario + "0110"
         caso "7"
              binario <- binario + "0111"
         caso "8"
              binario <- binario + "1000"
         caso "9"
              binario <- binario + "1001"
         caso "A"
              binario <- binario + "1010"
         caso "B"
              binario <- binario + "1011"
         caso "C"
              binario <- binario + "1100"
         caso "D"
              binario <- binario + "1101"
         caso "E"
              binario <- binario + "1110"
         caso "F"
              binario <- binario + "1111"
         outrocaso
            escreva("Erro: Caractere inválido '", caract, "' no número hexadecimal.")
            interrompa
      fimescolha
   fimpara

   // Exibe o resultado
   escreval("O número hexadecimal em binário é: ", binario)
fimprocedimento





// Variaveis Globais
var
   opcao, i: inteiro
   numero1, numero2, resultado, a, b, c: real
   str1, str2: caractere
// Funcao principal
inicio
   opcao <- 15
   enquanto opcao <> 0 faca
      // Exibir o menu
      escreval("Calculadora Cientifica")
      escreval("1. Adicao")
      escreval("2. Subtracao")
      escreval("3. Multiplicacao")
      escreval("4. Divisao")
      escreval("5. Fatorial")
      escreval("6. Concatenar")
      escreval("7. Equacao segundo grau")
      escreval("8. Juros simples")
      escreval("9. Juros composto")
      escreval("10. Binario para Decimal")
      escreval("11. Decimal para Binario")
      escreval("12. Binario para Octal")
      escreval("13. Octal para Binario")
      escreval("14. Binario para Hexadecimal")
      escreval("15. Hexadecimal para Binario")
      escreval("0. Sair")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      // Escolher a operacao
      se opcao = 1 entao
         leiaNumeros(numero1, numero2)
         resultado <- adicao(numero1, numero2)
         escreval("Resultado: ", resultado)
      fimse
      se opcao = 2 entao
         leiaNumeros(numero1, numero2)
         resultado <- subtracao(numero1, numero2)
         escreval("Resultado: ", resultado)
      fimse
      se opcao = 3 entao
         leiaNumeros(numero1, numero2)
         resultado <- multiplicacao(numero1, numero2)
         escreval("Resultado: ", resultado)
      fimse
      se opcao = 4 entao
         leiaNumeros(numero1, numero2)
         se numero2 <> 0 entao
            resultado <- divisao(numero1, numero2)
            escreval("Resultado: ", resultado)
         senao
            escreval("Erro: Divisao por zero!")
         fimse
      fimse
      se opcao = 5 entao
         leiaNumeroUnico(numero1)
         resultado <- 1
         i <- 1
         repita
            resultado <- resultado * i
            i <- i + 1
         ate (i > numero1)
         escreval("Resultado: ", resultado)
      fimse
      se opcao = 6 entao
         leiaString(str1, str2)
         escreval("Resultado: ", concatenar(str1, str2))
      fimse
      se opcao = 7 entao
         segundoGrau()
      fimse
      se opcao = 8 entao
         sjuros()
      fimse
      se opcao = 9 entao
         cjuros()
      fimse
      se opcao = 10 entao
         bindec()
      fimse
      se opcao = 11 entao
         decbin()
      fimse
      se opcao = 12 entao
         binoct()
      fimse
      se opcao = 13 entao
         octbin()
      fimse
      se opcao = 14 entao
         binhex()
      fimse
       se opcao = 15 entao
         hexbin()
      fimse

      se ((opcao < 0) ou (opcao > 15)) entao
         escreval("Entre com uma opcao existente")
      fimse
      se opcao <> 0 entao
         escreval("")
         escreval("--------------------------------------------")
         escreval("")
      fimse
   fimenquanto

fimalgoritmo