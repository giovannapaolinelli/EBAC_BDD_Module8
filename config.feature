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

  Cenário: Não selecionar tamanho
    Quando eu escolher a cor "blue"
    E adicionar "2" quantidades de produto
    E clicar no botão "Comprar"
    Então deve exibir a mensagem “Selecione a cor desejado”

  Cenário: Não selecionar cor
    Quando eu escolher o tamanho "M"
    E adicionar "2" quantidades de produto
    E clicar no botão "Comprar"
    Então deve exibir a mensagem “Selecione o tamanho desejado”

  Cenário: Não inserir quantidade
    Quando eu escolher a cor "blue"
    E adicionar "0" quantidade de produto
    E clicar no botão "Comprar"
    Então deve exibir a mensagem “Quantidade de produto insuficiente”

  Esquema do Cenário: Selecionar até 10 produtos
    Quando selecionar <quantidade>
    E clicar no botão "Comprar"
    Então deve adicionar os produtos ao carrinho

    Exemplos: 
      | quantidade |
      |          1 |
      |          9 |
      |         10 |

  Esquema do Cenário: Selecionar mais de 10 produtos
    Quando selecionar <quantidade>
    E clicar no botão "Comprar"
    Então deve exibir a mensagem “Quantidade de produtos acima do permitido”

    Exemplos: 
      | quantidade |
      |         11 |

  Cenário: Limpar configurações
    Quando eu clicar no botão "limpar"
    Então todas as configurações devem retornar ao estado original