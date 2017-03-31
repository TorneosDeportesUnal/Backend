json.extract! player, :id, :document, :document_type, :first_name, :last_name, :email, :gender, :semester, :career, :age, :contact_phone, :contact_emergency_phone, :contact_emergency_name, :eps, :created_at, :updated_at
json.url player_url(player, format: :json)
