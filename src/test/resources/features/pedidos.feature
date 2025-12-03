# language: pt
@hamburgueria
Funcionalidade: Pedidos na hamburgueria Peppa Lanches
  Para realizar pedidos corretos
  Como cliente
  Eu quero saber se o item pode ser pedido, o valor total e o tempo estimado

  Contexto:
    Dado que o cardápio contém os itens:
      | item         | preco |
      | x-bacon      | 25.00 |
      | x-salada     | 22.00 |
      | batata frita | 12.00 |

  @feliz
  Cenário: Pedido simples de item existente
    Quando eu peço "x-bacon" com 2 unidades
    Então o valor total do pedido deve ser "50,00"

  @inexistente
  Cenário: Pedido de item inexistente
    Quando eu peço "x-frango" com 1 unidade
    Então deve ser exibida a mensagem "Item indisponível no cardápio"

  @quantidade
  Cenário: Pedido com quantidade inválida
    Quando eu peço "x-salada" com 0 unidades
    Então deve ser exibida a mensagem "Quantidade inválida"

  @desconto
  Cenário: Pedido com desconto de 10 por cento
    Quando eu peço "x-bacon" com 1 unidade
    Quando aplico um desconto de 10 por cento
    Então o valor total do pedido deve ser "22,50"
  
  @Preparo
  Cenário: Calcular tempo estimado de preparo
    Quando eu peço 2 "x-bacon" e 3 "batata frita"
    Então o tempo estimado de preparo deve ser 18 minutos
