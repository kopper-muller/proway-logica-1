algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 15/04/2024
// Se��o de Declara��es
//solicitar nome pre�o e quantidade de um produto, para 5 produtos
//
var
produto: caracter
quantidade, indice: inteiro
preco, total: real
inicio
para indice de 0 ate 4 faca
   escreva("qual o nome do seu produto: ")
   leia (produto)
   limpatela
   escreva("qual o pre�o do seu produto: ")
   leia(preco)
   limpatela
   escreva ("qual a quantidade de produtos: ")
   leia (quantidade)
   limpatela
   total := total+(preco*quantidade)
   escreval (" ____________________________")
   escreval ("|produto", indice+1, ": ", produto)
   escreval ("|valor: ", preco)
   escreval ("|quantidade: ", quantidade)
   escreval ("|total at� agora: ", total)
   escreval ("|____________________________")
   escreval ("total at� agora: ", total)
fimpara

fimalgoritmo
