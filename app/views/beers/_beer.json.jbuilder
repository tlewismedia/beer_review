json.extract! beer, :id, :name, :brewer, :style, :abv, :created_at, :updated_at
json.url beer_url(beer, format: :json)
