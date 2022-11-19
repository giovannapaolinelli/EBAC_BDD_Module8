# language: pt
Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto: 
    Dado que eu acesse a página do produto desejado

  Esquema do Cenário: Configurar produto com todas as configurações
    Quando eu escolher a <cor>
    E escolher <tamanho>
    E adicionar <quantidade> quantidades de tamanho
    E clicar no botão "Comprar"
    Então deve adicionar os produtos ao carrinho

    Exemplos: 
      | cor    | tamanho | quantidade |
      | blue   | S       |          8 |
      | orange | L       |          1 |

  Esquema do Cenário: Não selecionar tamanho
    Quando eu deixar de escolher o campo <campo>
    Então deve exibir a mensagem <mensagem>
    Exemplos: 
      | campo        | mensagem                             |
      | cor          | "Selecione a cor desejado"           |
      | tamanho      | "Selecione o tamanho desejado"       |
      | quantidade   | "Quantidade de produto insuficiente" |

  Esquema do Cenário: Selecionar até 10 produtos
    Quando selecionar <quantidade>
    E clicar no botão "Comprar"
    Então adicionar os produtos ao carrinho deve ser <permitido>

    Exemplos: 
      | quantidade | permitido     |
      |          1 | permitido     |
      |          9 | permitido     |
      |         10 | permitido     |
      |            | não permitido |
      |         11 | não permitido |

  Cenário: Limpar configurações
    Quando eu clicar no botão "limpar"
    Então todas as configurações devem retornar ao estado original