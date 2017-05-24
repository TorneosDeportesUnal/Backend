class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :document, :document_type, :first_name, :last_name, :email, :semester, :career, :gender, :age,  :contact_phone, :teams #, :team


  def team
  	object.teams.ids
  end


end
