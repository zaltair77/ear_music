json.extract! song, :id, :title, :track_num, :artist, :album, :length, :favorite, :created_at, :updated_at
json.url song_url(song, format: :json)
