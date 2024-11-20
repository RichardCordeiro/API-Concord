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
    i: inteiro
    valorImaginario: inteiro
    binarioInvertido: caractere
    valorDecimal: inteiro
    tamanhoInput: inteiro
inicio
   escreval("Digite um valor binario")
      leia(binarioInput)
      tamanhoInput <- compr(Numpcarac(binarioInput))
      i <- 0
      valorImaginario <- 1
      repita

            binarioInvertido <- copia(binarioInput, (tamanhoInput - i), 1)
            se binarioInvertido > "1" entao
               escreva("O binario nao e valido")
               interrompa
            fimse
            se binarioInvertido = "1" entao
               valorDecimal <- valorDecimal + valorImaginario
            fimse
            i <- i + 1

            valorImaginario <- (valorImaginario * 2)

            se i >= tamanhoInput entao
               escreva("o numero binario ", binarioInput, " e", valorDecimal, " em numeracao decimal")
            fimse
      ate i >= tamanhoInput
fimprocedimento

procedimento decbin()
var
   Num, Valor: inteiro
Resultado1: Caracter
inicio
   Escreval ("Digite um numero Decimal: ")
  Leia (Num)
   Valor <- (Num)
   enquanto (Num > 0) faca
    Escolha (Num mod 2)
       caso 0
        Resultado1 <- ("0" + Resultado1)
         caso 1
          Resultado1 <- ("1" + Resultado1)
    FimEscolha
     Num <- (Num div 2)
   FimEnquanto

     Escreval ("O numero:", Valor, " Decimal sera: ", Resultado1, " em Binario")
fimprocedimento

procedimento binoct()
var
      valor: real
      octal, base ,decimal, expoente: real
      digito: real
   inicio
    escreva("Digite o numero binario: ")
    leia(valor)

    octal <- 0
    base <- 2
    expoente <- 0

    // BINARIO PARA DECIMAL
    decimal <- 0
    enquanto (valor >= 1) faça
        digito <- valor % 10
        decimal <- decimal + (digito * (base ^ expoente))
        valor <- valor / 10
        expoente <- expoente + 1
    fimenquanto

    // DECIMAL PARA OCTAL
    octal <- 0
    expoente <- 0
    enquanto (decimal >= 1) faça
        digito <- decimal % 8
        octal <- octal + (digito * (10 ^ expoente))
        decimal <- decimal / 8
        expoente <- expoente + 1
    fimenquanto

 Escreval ("O numero binario e",  octal, " em octal")
fimprocedimento

procedimento binhex()
var
      binario,i, digito, indice: inteiro
      decimal, base, expoente: real
      hexadecimal: vetor[1..20] de caractere // Vetor para armazenar os dígitos hexadecimais temporariamente
      digitos_hex: vetor[0..15] de caractere
   inicio
    escreva("Digite o número binário: ")
    leia(binario)

    // Inicializa o vetor de dígitos hexadecimais
    digitos_hex[0] <- "0"
    digitos_hex[1] <- "1"
    digitos_hex[2] <- "2"
    digitos_hex[3] <- "3"
    digitos_hex[4] <- "4"
    digitos_hex[5] <- "5"
    digitos_hex[6] <- "6"
    digitos_hex[7] <- "7"
    digitos_hex[8] <- "8"
    digitos_hex[9] <- "9"
    digitos_hex[10] <- "A"
    digitos_hex[11] <- "B"
    digitos_hex[12] <- "C"
    digitos_hex[13] <- "D"
    digitos_hex[14] <- "E"
    digitos_hex[15] <- "F"

  // Convertendo o número binário para decimal
    decimal <- 0
    expoente <- 0
    base <- 2
    enquanto (binario > 0) faça
        digito <- binario mod 10
        decimal <- decimal + (digito * (base ^ expoente))
        binario <- binario div 10
        expoente <- expoente + 1
    fimenquanto

    // Convertendo o número decimal para hexadecimal
    indice <- 1
    enquanto (decimal >= 1) faça
        digito <- decimal mod 16 // Obtém o dígito correspondente
        hexadecimal[indice] <- digitos_hex[digito] // Armazena o dígito hexadecimal no vetor
        decimal <- decimal / 16 // Atualiza decimal usando divisão inteira
        indice <- indice + 1
    fimenquanto

    // Exibe o número convertido em ordem inversa
    escreva("O número binário em hexadecimal é: ")
    indice <- indice - 1
    para i de indice ate 1 passo -1 faca
        escreva(hexadecimal[i])
    fimpara
    escreval("")
fimprocedimento

procedimento hexbin()
Var

      hexadecimal: caractere
      binario: vetor[1..80] de caractere // Vetor para armazenar o número binário temporariamente
      digitos_hex: vetor[0..40] de caractere
      binario_digito: vetor[0..40] de caractere
      digito_hex, i, j, k, indice, tamanho, hexaD: inteiro
   inicio
    escreva("Digite o numero hexadecimal: ")
    leia(hexadecimal)

    // Inicializa o vetor de dígitos hexadecimais
    digitos_hex[0] <- "0"
    digitos_hex[1] <- "1"
    digitos_hex[2] <- "2"
    digitos_hex[3] <- "3"
    digitos_hex[4] <- "4"
    digitos_hex[5] <- "5"
    digitos_hex[6] <- "6"
    digitos_hex[7] <- "7"
    digitos_hex[8] <- "8"
    digitos_hex[9] <- "9"
    digitos_hex[10] <- "A"
    digitos_hex[11] <- "B"
    digitos_hex[12] <- "C"
    digitos_hex[13] <- "D"
    digitos_hex[14] <- "E"
    digitos_hex[15] <- "F"

    digitos_hex[16] <- "10"
    digitos_hex[17] <- "11"
    digitos_hex[18] <- "12"
    digitos_hex[19] <- "13"
    digitos_hex[20] <- "14"
    digitos_hex[21] <- "15"
    digitos_hex[22] <- "16"
    digitos_hex[23] <- "17"
    digitos_hex[24] <- "18"
    digitos_hex[25] <- "19"
    digitos_hex[26] <- "1A"
    digitos_hex[27] <- "1B"
    digitos_hex[28] <- "1C"
    digitos_hex[29] <- "1D"
    digitos_hex[30] <- "1E"
    digitos_hex[31] <- "1F"

    digitos_hex[32] <- "20"
    digitos_hex[33] <- "21"
    digitos_hex[34] <- "22"
    digitos_hex[35] <- "23"
    digitos_hex[36] <- "24"
    digitos_hex[37] <- "25"
    digitos_hex[38] <- "26"
    digitos_hex[39] <- "27"
    digitos_hex[40] <- "28"


    // Inicializa o vetor com representações binárias
    binario_digito[0] <- "0000"
    binario_digito[1] <- "0001"
    binario_digito[2] <- "0010"
    binario_digito[3] <- "0011"
    binario_digito[4] <- "0100"
    binario_digito[5] <- "0101"
    binario_digito[6] <- "0110"
    binario_digito[7] <- "0111"
    binario_digito[8] <- "1000"
    binario_digito[9] <- "1001"
    binario_digito[10] <- "1010"
    binario_digito[11] <- "1011"
    binario_digito[12] <- "1100"
    binario_digito[13] <- "1101"
    binario_digito[14] <- "1110"
    binario_digito[15] <- "1111"

        binario_digito[16] <- "10000"
    binario_digito[17] <- "10001"
    binario_digito[18] <- "10010"
    binario_digito[19] <- "10011"
    binario_digito[20] <- "10100"
    binario_digito[21] <- "10101"
    binario_digito[22] <- "10110"
    binario_digito[23] <- "10111"
    binario_digito[24] <- "11000"
    binario_digito[25] <- "11001"
    binario_digito[26] <- "11010"
    binario_digito[27] <- "11011"
    binario_digito[28] <- "11100"
    binario_digito[29] <- "11101"
    binario_digito[30] <- "11110"
    binario_digito[31] <- "11111"

    binario_digito[32] <- "100000"
    binario_digito[33] <- "100001"
    binario_digito[34] <- "100010"
    binario_digito[35] <- "100011"
    binario_digito[36] <- "100100"
    binario_digito[37] <- "100101"
    binario_digito[38] <- "100110"
    binario_digito[39] <- "100111"
    binario_digito[40] <- "101000"


    // Obtém o tamanho do valor hexadecimal
    tamanho <- compr(hexadecimal)
    indice <- 1

    // Converte cada caractere do hexadecimal para binário
    para i de 1 ate tamanho faca
        // Procura o índice correspondente do caractere hexadecimal
        para j de 0 ate 40 faca
            se digitos_hex[j] = hexadecimal entao
                digito_hex <- j
                // Armazena a representação binária correspondente
                para k de 1 ate 4 faca
                    binario[indice] <- binario_digito[digito_hex][k]
                    indice <- indice + 1
                fimpara
            fimse
        fimpara
    fimpara

    // Exibe o número convertido
    escreva("O numero hexadecimal em binario e: ")
        escreva(binario[i])
    escreval("")
// Seção de Declarações das variáveis
fimprocedimento



// Variaveis Globais
var
   opcao, i: inteiro
   numero1, numero2, resultado, a, b, c: real
   str1, str2: caractere
// Funcao principal
inicio
   opcao <- 12
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