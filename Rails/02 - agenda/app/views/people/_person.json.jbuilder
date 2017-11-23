json.extract! person, :id, :nome, :abreviacao, :nascimento, :created_at, :updated_at
json.url person_url(person, format: :json)
