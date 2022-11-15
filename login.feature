# language: pt
Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto: 
    Dado que eu acesse a página de autenticação da plataforma

  Esquema do Cenário: Inserir dados válidos
    Quando eu digitar um <usuário>
    E uma <senha>
    Então deve redirecionar à tela de checkout

    Exemplos: 
      | usuário                  | senha        |
      | usuario.valido@gmail.com | senha_valida |

  Esquema do Cenário: Inserir dados inválidos
    Quando eu digitar um <usuário>
    E uma <senha>
    Então deve exibir a mensagem “Usuário ou senha inválidos”

    Exemplos: 
      | usuário                  | senha          |
      | usuario.valido@gmail.com | senha_invalida |
      | usuario.invalido         | senha_valida   |
