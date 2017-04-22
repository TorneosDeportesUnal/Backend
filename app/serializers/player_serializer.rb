class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :document_type, :document, :age
end
