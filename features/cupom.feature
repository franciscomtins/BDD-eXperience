#language:pt

Funcionalidade: Uso de Cupons do Checkout

    Como usuário da Starbugs, Eu quero pode aplicar cupons de desconto na página de checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a satiscação com a minha experiência de compra. 

    Cenário: Aplicar Desconto de 20%

    Dado que estou na página de checkout
       E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
       E a taxa de entrega é de R$ 10,00
       E o valor total é de R$ 29,99
       E tenho um cupom com 20% de desconto
    Quando aplico esse cupom de desconto
    Então o desconto de 20% deve ser aplicado apenas no valor do Café com Leite
       E o valor final da compra deve ser atualizado para R$ 25,99


    Cenário: Cupom Experido

    Dado que estou na página de checkout
       E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
       E a taxa de entrega é de R$ 10,00
       E o valor total é de R$ 29,99
       E tenho um cupom que está expirado
    Quando aplico esse cupom de desconto
    Então devo ver a seguinte notificação "Cupom expirado!"
       E o valor final da compra deve permanecer R$ 29,99


    Cenário: Cupom Inválido

    Dado que estou na página de checkout
       E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
       E a taxa de entrega é de R$ 10,00
       E o valor total é de R$ 29,99
       E tenho um cupom com o código inválido
    Quando aplico esse cupom de desconto
    Então devo ver a seguinte notificação "Cupom inválido!"
       E o valor final da compra deve permanecer R$ 29,99