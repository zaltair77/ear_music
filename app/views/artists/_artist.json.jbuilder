json.extract! artist, :id, :name, :pic, :genre, :about, :created_at, :updated_at
json.url artist_url(artist, format: :json)
