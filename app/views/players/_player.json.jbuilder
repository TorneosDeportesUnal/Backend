json.extract! player, :id, :document, :document_type, :first_name, :last_name, :email, :gender, :age, :contact_phone, :eps, :created_at, :updated_at
json.url player_url(player, format: :json)
