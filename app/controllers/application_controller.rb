class ApplicationController < ActionController::Base
  protect_from_forgery except: [:search]
  respond_to :html, :js

  def search_page
  end

  def music_page
  end

  def artists_page
    artists = Artist.ids
    session[:artists] = artists
  end

  def albums_page
  end

  def songs_page
  end

  def search
    search = params[:search]

    results = []

    Song.where("title like ?", "%#{search}%").each do |song|
        results.push("Song: " + song.title + " from " + song.album + " by " + song.artist)
    end

    Song.where("album like ?", "%#{search}%").each do |song|
        results.push("Song: " + song.title + " from " + song.album + " by " + song.artist)
    end

    Song.where("artist like ?", "%#{search}%").each do |song|
        results.push("Song: " + song.title + " from " + song.album + " by " + song.artist)
    end

    Album.where("title like ?", "%#{search}%").each do |album|
      results.push("Album: " + album.title + " by " + album.artist)
    end

    Album.where("artist like ?", "%#{search}%").each do |album|
      results.push("Album: " + album.title + " by " + album.artist)
    end

    Artist.where("name like ?", "%#{search}%").each do |artist|
        results.push("Artist: " + artist.name)
    end

    if results.length == 0
      session[:results] = "No Results."
    else
      session[:results] = results
    end

    redirect_to "/search/results"

  end

end
