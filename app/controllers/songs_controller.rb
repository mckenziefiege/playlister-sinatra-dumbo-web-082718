class SongsController < ApplicationController

  get '/songs' do
    erb :"songs/index"
  end

  get '/songs/new' do
    erb :new
  end

  post '/songs' do
  end 

  get '/songs/:slug' do
  end

end
