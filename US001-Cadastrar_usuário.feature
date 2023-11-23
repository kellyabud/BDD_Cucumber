#encoding: UTF-8
#language: pt

Funcionalidade: Cadastro de usuário
Como usuário não cadastrado,
Quero me cadastrar no Publicazo,
Para ter acesso aos recursos da aplicação.


Contexto: 
Dado que o usuário não tenha realizado o cadastro
E esteja na página de cadastro do usuário

Cenário: Cadastro realizado com sucesso
Quando o usuário preenche os campos obrigatórios com dados válidos
E clica no botão cadastrar
Então o sistema exibe uma mensagem de sucesso

Cenário: Tentativa de cadastro sem preencher os campos obrigatórios
Quando o usuário não preenche nenhum campo
E clica no botão cadastrar
Então o sistema exibe uma mensagem informando que todos os campos são obrigatórios

Cenário: Tentativa de cadastro com dados inválidos
Quando o usuário preenche o campo com "e-mail inválido" 
E clica no botão cadastrar
Então o sitema exibe uma mensagem de erro

Cenário: Tentativa de cadastro com senha e confirmação de senha divergentes
Quando o usuário preenche o campo senha e confirmação de senha com dados divergentes
E clica no botão cadastrar
Então o sistema exibe uma mensagem informando que as senhas se divergem


