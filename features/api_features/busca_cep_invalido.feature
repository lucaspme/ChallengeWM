#language: pt
#encoding: UTF-8

Funcionalidade: Busca CEP Inválido
  Eu como analista de qualidade
  Quero realizar uma busca por um CEP inválido através da API dos correios

  @api_done
  Cenário: Validar se a API dos correios retorna um endereço através de um CEP válido
    Dado que eu realize a chamada no serviço dos correios de consuta endereço com um CEP inválido
    E o serviço responderá com o código "404"
    Então eu validarei os a mensagem de erro retornada
