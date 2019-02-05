Rails.application.routes.draw do
  resources :profiles
  resources :songs
  resources :albums
  resources :artists

  root "dashboards#index"

  get "/go-artist", to: "artists#index"
  get "/go-album", to: "albums#index"
  get "/go-song", to: "songs#index"
  get "/go-prof", to: "profiles#index"

  get "/login", to: "login#login"
  get "/error", to: "login#login_error"

  get "/profile", to: "profiles#user_page"

  get "/search", to: "application#search_page"
  get "/search/results", to: "application#search_page"

  get "/music", to: "application#music_page"

  get "/artists_page", to: "application#artists_page"
  get "/albums_page", to: "application#albums_page"
  get "/songs_page", to: "application#songs_page"

  post "/try", to: "profiles#check"
  post "/new-search", to: "application#search"

end
