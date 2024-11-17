algoritmo "Calculadora Cientifica"

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

// Variaveis Globais
var
   opcao, i: inteiro
   numero1, numero2, resultado, a, b, c: real
   str1, str2: caractere
// Funcao principal
inicio
   opcao <- 10
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


      se ((opcao < 0) ou (opcao > 9)) entao
         escreval("Entre com uma opcao existente")
      fimse
      se opcao <> 0 entao
         escreval("")
         escreval("--------------------------------------------")
         escreval("")
      fimse
   fimenquanto

fimalgoritmo
