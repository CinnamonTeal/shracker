class ShirtsController < ApplicationController
  get '/shirts' do
    @shirts = Shirt.all
    erb :"shirts/index"
  end

  get '/shirts/:id' do
    @shirt = Shirt.find(params[:id])
    session[:last_seen] = @shirt.id
    erb :"shirts/show"
  end

end
