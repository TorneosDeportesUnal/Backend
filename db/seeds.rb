# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


TeamPlayer.destroy_all
TeamGroup.destroy_all
TeamMatch.destroy_all
Player.destroy_all
Match.destroy_all
Group.destroy_all
TournamentPhase.destroy_all
Availavility.destroy_all
Team.destroy_all
Tournament.destroy_all

User.create(email: 'user@example.com', nickname: 'UN', name: 'Unal', password: "asdf1234")

Tournament.create(id: 1, active: true, name: Faker::University.name, begin_date: Faker::Date.backward(4), end_date: Faker::Date.forward(10), gender: "masculino", discipline:"futbol")

Team.create(id: 1, active: true, name: Faker::Company.name, coach_name: Faker::Name.name, tournament_id: 1)
Team.create(id: 2, active: true, name: Faker::Company.name, coach_name: Faker::Name.name, tournament_id: 1)
Team.create(id: 3, active: true, name: Faker::Company.name, coach_name: Faker::Name.name, tournament_id: 1)
Team.create(id: 4, active: true, name: Faker::Company.name, coach_name: Faker::Name.name, tournament_id: 1)

Team.create(id: 5, active: true, name: Faker::Company.name, coach_name: Faker::Name.name, tournament_id: 1)
Team.create(id: 6, active: true, name: Faker::Company.name, coach_name: Faker::Name.name, tournament_id: 1)

TournamentPhase.create(id:1, active: true,phase_type: "grupos", tournament_id: 1)	

Group.create(id: 1, active: true,name: Faker::Pokemon.name, tournament_phase_id: 1)	
Group.create(id: 2, active: true,name: Faker::Pokemon.name, tournament_phase_id: 1)	


TeamGroup.create(id: 1,group_id: 1, team_id: 1 )
TeamGroup.create(id: 2,group_id: 1, team_id: 2 )
TeamGroup.create(id: 3,group_id: 1, team_id: 3 )
TeamGroup.create(id: 4,group_id: 1, team_id: 4 )

TeamGroup.create(id: 5,group_id: 2, team_id: 5 )
TeamGroup.create(id: 6,group_id: 2, team_id: 6 )




i = 1
while i<50

	#Tournament.create(id:i, active: true, name: Faker::University.name, begin_date: Faker::Date.backward(4), end_date: Faker::Date.forward(10), gender: "masculino", discipline:"futbol")
	#Team.create(id:i, active: true, name: Faker::Company.name, coach_name: Faker::Name.name, wins: i%4, loses: i%2,  tournament_id: i%10)
	#TournamentPhase.create(id:i, active: true,phase_type: "grupos", tournament_id: i%10)	
	#Group.create(id:i, active: true,name: Faker::Pokemon.name, winners_number: i%5, tournament_phase_id: i-39)
	#Match.create(id:i, game_field_location: Faker::University.name, date: Faker::Date.forward(10), judges: Faker::Name.name, group_id:i%5)
	#Availavility.create(id:i, begin_hour: Faker::Time.forward(23,:morning), end_hour: Faker::Time.forward(24,:morning), team_id: i%4)
	Player.create(id:i, document: i, contact_phone: i, age: i, document_type: "cc", gender: "masculino", first_name: Faker::Name.name, last_name: Faker::Name.name)
	#Player.create(id:i+50, document: i+50, contact_phone: i+100, age: i+100, document_type: "ti", gender: "masculino", first_name: Faker::Name.name, last_name: Faker::Name.name)
	TeamPlayer.create(id:i, player_id: i, team_id: i%4, assist:i%4, yellow_cards: i%6)
	#TeamGroup.create(id:i, group_id: i%5, team_id: i%10 )
	#TeamMatch.create(id:i, match_id: i%3, team_id: i, goals: i%5)


	i+=1
end
#Player.create(document: 115, contact_phone: i, age: i, document_type: "cc", gender: "masculino", first_name: "Murray", last_name: Faker::Name.name)
#Player.create( document: 125, contact_phone: i, age: i, document_type: "cc", gender: "masculino", first_name: Faker::Name.name, last_name: "Murray")