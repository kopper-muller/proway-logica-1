algoritmo "semnome"
// Função :
// Autor :
// Data : 15/04/2024
// Seção de Declarações
var
nome: caracter
indice: inteiro
temperatura: real
febre: logico
inicio
// Seção de Comandos
para indice de 0 ate 2 faca
   escreva("qual seu nome: ")
   leia (nome)
   limpatela
   escreva ("qual sua temperatura: ")
   leia(temperatura)
   limpatela
   se (temperatura>37) entao
      febre := verdadeiro
   senao
      febre := falso
   fimse
   se febre=verdadeiro entao
   escreval (" status: febríolo")
   timer(2000)
   limpatela
   timer(0)
fimse
fimpara


fimalgoritmo
