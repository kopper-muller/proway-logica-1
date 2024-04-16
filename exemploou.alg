algoritmo "semnome"
// Função :
// Autor :
// Data : 10/04/2024
// Seção de Declarações 
var
nome: caracter
preco: real
categoria: caracter
desconto: real
total: real

inicio
// Seção de Comandos 

escreva(" digite o nome do produto: ")
leia (nome)
escreva("digite a categoria do produto: ")
leia(categoria)
escreva("digite o preço do produto: ")
leia(preco)
se ((categoria = "acessório") ou (categoria = "monitores") ou (categoria = "monitor")) entao
total := preco *0.10
desconto := preco*0.9
fimse

escreval ("desconto: ", desconto)
escreval(" taotal: ", total)
fimalgoritmo
