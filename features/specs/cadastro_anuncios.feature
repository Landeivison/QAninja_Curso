#language: pt

Funcionalidade: Cadastro de anuncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para disponibilizá-los para locação

    Cenario: Novo equipamento

        Dado que estou logado como "jose@gmail.com" e "123"
            E acesso o formulário de cadastro de anúncios
            E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard