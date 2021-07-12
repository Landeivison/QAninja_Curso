#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema do RockLov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "jose@gmail.com" e "123"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: <mensagem_output>

        Exemplos:
            | email_input    | senha_input | mensagem_output                    |
            | jose@gmail.com | 321         | "Usuário e/ou senha inválidos."    |
            | jose@404.com   | 321         | "Usuário e/ou senha inválidos."    |
            | jose*gmail.com | 123         | "Oops. Informe um email válido!"   |
            |                | 123         | "Oops. Informe um email válido!"   |
            | jose@gmail.com |             | "Oops. Informe sua senha secreta!" |