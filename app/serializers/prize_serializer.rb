class PrizeSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :tournament
  belongs_to :team  
end
