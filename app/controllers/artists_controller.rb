class ArtistsController < ApplicationController

  get '/artists' do
    erb :"artists/index"
  end

  get '/artists/:slug' do
  end
end
