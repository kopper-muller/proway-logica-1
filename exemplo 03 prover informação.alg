algoritmo "exemplo 04 solicitar informmação"
// Função :
// Autor :
// Data : 08/04/2024
// Seção de Declarações 
var
nome: caracter
quantidade: inteiro
precoUnitario: real
valorTotal: real
valorPago: real
troco: real
outraQuantia: real
inicio
// Seção de Comandos
escreva ("digite o nome do produto: ")
leia (nome)

escreva ("digite a quantidade desejada:")
leia (quantidade)

escreva ("digite o preço:")
leia (precoUnitario)

valorTotal := ( quantidade*precoUnitario)
escreval ("valor total: ", valorTotal)

troco := valorPago-precoUnitario

escreva ("Digite o Valor pago:")
leia (valorPago)
se valorPago = valorTotal entao
escreva ("Obrigadocpela compra!")
fimse
se (valorPago) < valorTotal entao
escreva ("O valor não é suficiente, tente outra quantia:")
fimse
leia (valorPago)
se valorPago > valorTotal entao
escreva ("o valor é superior ao preço unitario, este é seu troco: ", troco)
fimse













fimalgoritmo
