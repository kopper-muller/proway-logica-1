algoritmo "semnome"
// Função :verificar se um número é primo ou não
// Autor : Bernardo
// Data : 09/04/2024
// Seção de Declarações 
//tentar fazer com que o computador identifique se um numero é divisível somente por 1 e por ele mesmo. algo como "para indice de 1 ate numero1 faca numero1%indice
//numero2 := numero1%indice, se numero2>0 escreval PRIMO

var
numero1: inteiro
numero2: inteiro
numero3: inteiro
indice: inteiro
indice2: inteiro
inicio
// Seção de Comandos
escreval ("diga-me um número e eu te direi se é primo ou não: ")
   leia (numero1)
numero2 := numero1-1
para indice de 2 ate numero2 faca
   indice2 :=  numero1%indice
   se indice2=0 entao
      escreval ("este número é divisível em: ", numero1, " /", indice, " =", numero1/indice)


fimse
fimpara

   


fimalgoritmo

