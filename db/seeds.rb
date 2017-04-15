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
Tournament.destroy_all
Team.destroy_all


i = 1
Tournament.create()
while i<50

	Team.create(id: i, name: Faker::Company.name, coach_name: Faker::Name.name, wins: i%4, loses: i%2)
	Tournament.create(id: i, begin_date: Faker::Date.backward(4), end_date: Faker::Date.forward(10), team_id: i)
	TournamentPhase.create(id: i,phase_type: "grupos", tournament_id: i%10)	
	Group.create(id: i, name: Faker::Pokemon.name, winners_number: i%5, tournament_phase_id: i%10)
	Match.create(id: i, game_field_location: Faker::University.name, date: Faker::Date.forward(10), judges: Faker::Name.name, group_id:i%5)
	Availavility.create(begin_hour: Faker::Time.forward(23,:morning), end_hour: Faker::Time.forward(24,:morning), team_id: i%4)
	Player.create(id: i, document: i, contact_phone: i, age: i, document_type: "cc", gender: "masculino", first_name: Faker::Name.name, last_name: Faker::Name.name)
	Player.create(id: i+50, document: i+50, contact_phone: i+100, age: i+100, document_type: "ti", gender: "masculino", first_name: Faker::Name.name, last_name: Faker::Name.name)
	TeamPlayer.create(id: i, player_id: i, team_id: i%4, assist:i%4, yellow_cards: i%6)
	TeamGroup.create(id:i, group_id: i%5, team_id: i%10 )
	TeamMatch.create(id:i, match_id: i%3, team_id: i, goals: i%5)


	i+=1
end