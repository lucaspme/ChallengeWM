class Correios
  include HTTParty

  base_uri ENVIRONMENT['correios']
  format :json
  headers 'Content-Type' => 'application/json'


  # def initialize
  #     @cep_invalido = Faker::Number(8)
  #   end

  def get_consulta_cep(cep)
    self.class.get("/" + cep)
  end
end
