Dado(/^que eu estou na pagina de login$/) do
  @login = Login.new
  @login.load
end

Dado(/^insiro dados válidos nos campos de login$/) do
  @login.acesso
end

Então(/^o sistema exibirá a mensagem "([^"]*)"$/) do |msg|
  binding.pry
  @login.valida_acesso(msg)
end

Dado(/^que clico no botão logout$/) do
  @login.valida_acesso("jhjkhjkh")
  binding.pry
  @login.realiza_logoff
end
