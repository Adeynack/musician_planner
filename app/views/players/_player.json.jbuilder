json.extract! player, :id, :name, :main_instrument, :email, :created_at, :updated_at
json.url player_url(player, format: :json)
