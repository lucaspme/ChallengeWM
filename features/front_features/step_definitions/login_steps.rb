Dado(/^que eu estou na pagina de login$/) do
  @login = Login.new
  @login.load
end

Dado(/^insiro dados válidos nos campos de login$/) do
  @login.acesso
end

Então(/^o sistema exibirá a mensagem "([^"]*)"$/) do |msg|
  @login.valida_acesso(msg)
end

Dado(/^que clico no botão logout$/) do
  @login = Login.new
  @login.realiza_logoff
end
