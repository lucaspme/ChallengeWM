Dado(/^que eu realize a chamada no serviço dos correios de consuta endereço com o cep "([^"]*)"$/) do |cep_valido|
  @response = Correios.new.get_consulta_cep(cep_valido)
end

Dado(/^o serviço responderá com o código "([^"]*)"$/) do |code|
  expect(@response.code).to eq (code.to_i)
end

Então(/^eu validarei os valores da resposta do serviço de consulta de endereço$/) do
  expect(@response.parsed_response['cep']).to eq "01332020"
  expect(@response.parsed_response['tipoDeLogradouro']).to eq "Rua"
  expect(@response.parsed_response['logradouro']).to eq "Professor Picarolo"
  expect(@response.parsed_response['bairro']).to eq "Bela Vista"
  expect(@response.parsed_response['cidade']).to eq "São Paulo"
  expect(@response.parsed_response['estado']).to eq "SP"
end
