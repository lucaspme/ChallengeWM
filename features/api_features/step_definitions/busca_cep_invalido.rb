Dado(/^que eu realize a chamada no serviço dos correios de consuta endereço com um CEP inválido$/) do
  cep_invalido = Faker::Number.number(8)
  @response = Correios.new.get_consulta_cep(cep_invalido)
end

Então(/^eu validarei os a mensagem de erro retornada$/) do
  expect(@response.parsed_response['message']).to eq "Endereço não encontrado!"
end
