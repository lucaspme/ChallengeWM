#language: pt
#encoding: UTF-8

Funcionalidade: Realizar login e logout ao site herokuapp
  Eu como analista de qualidade
  Quero realizar login e logout para valiar acesso e saída da aplicação

  @front_done
  Cenário: Validar login com sucesso
    Dado que eu estou na pagina de login
    E insiro dados válidos nos campos de login
    Então o sistema exibirá a mensagem "You logged into a secure area!"

  @front_done
  Cenário: Validar logout com sucesso
    Dado que clico no botão logout
    Então o sistema exibirá a mensagem "You logged out of the secure area!"
