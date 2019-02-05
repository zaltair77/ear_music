json.extract! profile, :id, :username, :password, :pic, :cover_image, :link, :about, :last_played_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
