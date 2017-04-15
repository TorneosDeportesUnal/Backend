class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :document_type, :document, :age
  has_many :team_players
  has_many :teams, through: :team_players
end
