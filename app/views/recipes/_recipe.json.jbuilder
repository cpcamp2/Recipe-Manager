json.extract! recipe, :id, :name, :difficulty, :prep_time, :directions, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
