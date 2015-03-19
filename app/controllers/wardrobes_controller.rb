class WardrobesController < ApplicationController
  post '/wardrobes' do
    shirt = Shirt.find(params[:shirt_id])
    current_user.shirts << shirt
    redirect "/shirts/#{shirt.id}"
  end
end
