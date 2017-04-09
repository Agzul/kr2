json.extract! film, :id, :name, :year, :director, :film_company_id, :created_at, :updated_at
json.url film_url(film, format: :json)
