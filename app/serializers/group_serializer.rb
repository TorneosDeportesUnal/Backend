class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :winners_number
  belongs_to :tournament_phase

  has_many :matches

  has_many :team_groups
  has_many :teams, through: :team_groups  
end
