algoritmo "semnome"
// Função :
// Autor :
// Data : 15/04/2024
// Seção de Declarações
var
indice, idade: inteiro
altura, peso, imc: real
nome, status: caracter

inicio
para indice de 0 ate 4 faca

   escreva ("digite seu peso(Kg): ")
   leia(peso)
   limpatela
   escreva ("digite sua altura(Metros): ")
   leia(altura)
   limpatela
   escreva ("digite sua idade: " )
   leia(idade)
   limpatela
   escreva ("digite seu nome: ")
   leia(nome)
   limpatela
   imc:= peso/(altura*altura)
   se (imc<18.5) entao
      status := "abaixo do peso"
   senao
      se ((imc>=18.5) e (imc<=24.9)) entao
         status := "peso ideal"
      senao
         se ((imc>=25) e (imc<=29.9))entao
            status := "levemente acima do peso"
         senao
            se ((imc>=30) e (imc<=34.9)) entao
               status := "obesidade grau I"
            senao
               se ((imc>=35) e (imc<=40)) entao
                  status := "obesidade grau II"
               fimse
            fimse
         fimse
      fimse
   fimse
   escreval (" ____________________ ")
   escreval ("| nome: ", nome)
   escreval("|")
   escreval("| peso: ", peso)
   escreval("|")
   escreval("| idade: ", idade)
   escreval("|")
   escreval("| altura: ", altura)
   escreval("|")
   escreval("| imc: ", imc)
   escreval("| status: ", status)
   escreval("|______________________")
fimpara

fimalgoritmo
