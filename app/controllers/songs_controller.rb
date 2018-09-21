class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  get '/songs/new' do
    @all_genres = Genre.all
    @all_artists = Artist.all
    erb :"songs/new"
  end

  post '/songs' do
    @song = Song.find_or_create_by(params[:song])
    @artist = Artist.find_or_create_by(params[:artist])
    #flash[:message] = "Successfully created song."
    redirect to("/songs/#{@song.slug}")
  end

  get '/songs/:slug' do

    @song = Song.find_by_slug(params[:slug])

    erb :"/songs/show"
  end

end
