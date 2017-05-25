# Challenge Wallmart

## Dependencias

	* Ruby 2.3.3

## Instruções de Instalação

	* Instalar bundler

        $ gem install bundler

	* Instalando Projeto

		$ git clone https://github.com/lucaspme/ChallengeWM.git
		$ bundle install

## Opções
	* `ENV` - Qual o tipo de teste será executado, API ou front
	    * `api`
	    * `front`
	* `username` - Nome do usuário para login nos testes de front-end
	* `password` - Senha do usuário para login nos testes de front-end
## Exemplo:

	$ cucumber --tag ENV=api
	$ cucumber --tag EVV=front username=tomsmith password=SuperSecretPassword!
