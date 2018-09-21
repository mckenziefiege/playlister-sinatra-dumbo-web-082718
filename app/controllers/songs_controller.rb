class SongsController < ApplicationController

  get '/songs' do
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
  binding.pry
    #flash[:message] = "Successfully created song."
    redirect to("/songs/#{@song.slug}")
  end

  get '/songs/:slug' do
    erb :"/songs/show"
  end

end
