#language: pt

Funcionalidade: Login

    Para que eu possa gerenciar os filmes do catáloco NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha
    @login_happy
    Cenario: Acesso
        Quando eu faço login com "tony@stark.com" e "pwd123"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada
    @login_bad
    Esquema do Cenario: Login sem sucesso
        Quando eu faço login com <email> e <senha>
        Então não devo ser autenticado
        E devo ver a mensagem de alerta <texto>

    Exemplos:
        | email             | senha     | texto                          |
        | "tony@stark.com"  | "abc123"  | "Usuário e/ou senha inválidos" |
        | "abc@123.com"     | "abc123"  | "Usuário e/ou senha inválidos" |
        | ""                | "xpto123" | "Opps. Cadê o email?"          |
        | "teste@gmail.com" | ""        | "Opps. Cadê a senha?"          |



