# README

*Para solucionar el error de bcrypt de rails se debe hacer desinstalar e instalar de nuevo la gema de bcrypt asi:

1. En la consola:
	gem uninstall bcrypt y seleccionar opcion 3 si existe.

2.En la consola:
	gem uninstall bcrypt-ruby y seleccionar opcion 3 si existe.

3.En la consola:
	gem install bcrypt --platform=ruby 

4.Añadir en Gemfile :
	gem 'bcrypt', platforms: :ruby

No se debe hacer nada más.

*Si desean quitar la autenticación para probar las vistas solo deben comentar esta linea en cada controlador:

	before_action :authenticate_user!, :except => [:show, :index]

*Para autenticar un usuario creado, mandar un post a la url:
	localhost:3000/auth/sign_in 
con los valores :

	{
		"email": "user@example.com", 
		"password": "asdf1234"
	}

Al autenticar se recibira un Header que contiene:

	access-token : (cambia con la sesión)
	client : (cambia con la sesión)
	expiry : (cambia con la sesión)
	token-type : Bearer
	uid : user@example.com

Estos valores se usarán para la autenticación en cualquier metodo post.

*Un ejemplo de como crear la fase con varios grupos a la vez con un solo json:

	{
		"tournament_phase":{
			"phase_type":"eliminacion",
			"active":"true",
			"tournament_id":"150",
			"groups_attributes":[
				{
					"name":"GRUPOA",
					"active":"true",
					"winners_number":"2"
				},
				{
					"name":"GRUPOB",
					"active":"true",
					"winners_number":"2"
				}]		
		}
	}