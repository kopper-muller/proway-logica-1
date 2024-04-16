algoritmo "exercício3 enquanto"

var
media, somanota, nota: real
indice1, indice2: inteiro
nome: caracter
inicio
enquanto indice1<5 faca
   indice1 := indice1+1
   escreva ("digite seu nome: ")
   leia(nome)
   escreval ("digite suas notas: ")

   enquanto indice2<4 faca
      indice2 := indice2+1

      escreva ("nota", indice2, ": ")
      leia(nota)

      somaNota := somaNota+nota
      media := somaNota/4

      se indice2=4 entao
         escreval("sua média é: ", media)
      fimse
   fimenquanto
   se (indice2=4) entao
   indice2 := 0
   somaNota := 0
   fimse
fimenquanto

fimalgoritmo
//EU CONSEGUI SEM USAR 4 VARIAVEIS DE NOTA, SIIUU

