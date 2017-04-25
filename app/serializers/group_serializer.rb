class GroupSerializer < ActiveModel::Serializer
  attributes :id, :active,:name, :winners_number 
end
