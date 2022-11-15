# language: pt
Funcionalidade: Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 

  Contexto: 
    Dado que eu entre na tela de checkout

  Esquema do Cenário: Inserir dados obrigatórios
    Quando eu inserir <nome>, <sobrenome>, <país>, <endereço>, <cidade>, <CEP>, <telefone> e <e-mail>
    E clicar no botão "Finalizar Compra"
    Então deve finalizar compra com sucesso

    Exemplos: 
      | nome  | sobrenome | país     | endereço              | cidade    | CEP       | telefone        | e-mail          |
      | Maria | Silva     | Brasil   | Rua das flores, 8     | São Paulo | 11333-700 | (11) 99999-1111 | maria@gmail.com |
      | João  | Oliveira  | Portugal | Rua dos pássaros, 239 | Salvador  | 40333-700 | (75) 98889-1111 | joao@gmail.com  |

  Cenário: Inserir e-mail com formato inválido
    Quando eu inserir email "xxxxxx"
    E clicar no botão "Finalizar Compra"
    Então deve exibir mensagem "formato de e-mail inválido"

  Esquema do Cenário: Tentar fazer checkout com campo obrigatório vazio
    Quando eu não inserir dados no campo <campo>
    E clicar no botão "Finalizar Compra"
    Então deve exibir mensagem "Informe " <campo>

    Exemplos: 
      | campo     |
      | nome      |
      | sobrenome |
      | país      |
      | endereço  |
      | cidade    |
      | CEP       |
      | telefone  |
      | e-mail    |
