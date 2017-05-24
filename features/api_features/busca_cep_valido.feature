#language: pt
#encoding: UTF-8

Funcionalidade: Busca CEP Válido
  Eu como analista de qualidade
  Quero realizar uma busca por um CEP válido através da API dos correios

  @api_done
  Cenário: Validar se a API dos correios retorna um endereço através de um CEP válido
    Dado que eu realize a chamada no serviço dos correios de consuta endereço com o cep "01332020"
    E o serviço responderá com o código "200"
    Então eu validarei os valores da resposta do serviço de consulta de endereço
