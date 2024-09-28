algoritmo "Calculadora Científica"

// Definição das Funções de Operações Matemáticas
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

// Funções auxiliares para leitura
procedimento leiaNumeros(var a, b: real)
inicio
   escreva("Digite o primeiro número: ")
   leia(a)
   escreva("Digite o segundo número: ")
   leia(b)
fimprocedimento

// Variáveis Globais
var
   opcao: inteiro
   numero1, numero2, resultado: real

// Função principal
inicio
      opcao <- 10
      enquanto opcao <> 0 faca
      // Exibir o menu
      escreval("Calculadora Científica")
      escreval("1. Adição")
      escreval("2. Subtração")
      escreval("3. Multiplicação")
      escreval("4. Divisão")
      escreval("0. Sair")
      escreva("Escolha uma opção: ")
      leia(opcao)

      // Escolher a operação

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
               escreval("Erro: Divisão por zero!")
            fimse
         fimse
         se ((opcao <0) ou (opcao > 4)) entao
            escreval("Entre com uma opção existente")
         fimse
         se opcao <> 0 entao
            escreval("")
            escreval("--------------------------------------------")
            escreval("")
         fimse
    fimenquanto

fimalgoritmo
