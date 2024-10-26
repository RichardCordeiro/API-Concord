algoritmo "Calculadora Cient?fica"

// Defini??o das Fun??es de Opera??es Matem?ticas
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

funcao concatenar(str1,str2:caracter):caracter
       retorne str1 + str2
fimfuncao

// Fun??es auxiliares para leitura
procedimento leiaNumeros(var a, b: real)
inicio
   escreva("Digite o primeiro n?mero: ")
   leia(a)
   escreva("Digite o segundo n?mero: ")
   leia(b)
fimprocedimento

procedimento leianumeroUnico(var x: real)
inicio
   escreval("Entre com o primeiro número: ")
   leia(x)
fimprocedimento

procedimento leiastring(var x, y: caracter)
inicio
   escreval("Entre com a primeira palavra: ")
   leia(x)
   escreval("Entre com a segunda palavra: ")
   leia(y)
fimprocedimento

// Vari?veis Globais
var
   opcao, i: inteiro
   numero1, numero2, resultado: real
   str1, str2: caractere
   // Fun??o principal
inicio
   opcao <- 10
   enquanto opcao <> 0 faca
      // Exibir o menu
      escreval("Calculadora Cient?fica")
      escreval("1. Adi??o")
      escreval("2. Subtra??o")
      escreval("3. Multiplica??o")
      escreval("4. Divis?o")
      escreval("5. Fatorial")
      escreval("6. Concatenar")
      escreval("0. Sair")
      escreva("Escolha uma op??o: ")
      leia(opcao)

      // Escolher a opera??o

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
      se opcao = 3  entao
         leiaNumeros(numero1, numero2)
         resultado <- multiplicacao(numero1, numero2)
         escreval("Resultado: ", resultado)
      fimse
      se opcao = 4  entao
         leiaNumeros(numero1, numero2)
         se numero2 <> 0 entao
            resultado <- divisao(numero1, numero2)
            escreval("Resultado: ", resultado)
         senao
            escreval("Erro: Divis?o por zero!")
         fimse
      fimse
      se opcao = 5 entao
         leianumeroUnico(numero1)
         resultado <- 1
         i <- 1
         repita
            resultado <- resultado * i
            i <- i+1
         ate (i>numero1)
         escreval(resultado)
      fimse
      se opcao = 6 entao
         leiastring(str1,str2)
         escreval(concatenar(str1,str2))
      fimse

      se ((opcao <0) ou (opcao > 6)) entao
         escreval("Entre com uma op??o existente")
      fimse
      se opcao <> 0 entao
         escreval("")
         escreval("--------------------------------------------")
         escreval("")
      fimse
   fimenquanto

fimalgoritmo