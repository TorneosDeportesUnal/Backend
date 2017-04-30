class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :document, :first_name, :last_name, :email, :gender, :age
end
