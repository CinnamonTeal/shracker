class RegistrationsController < ApplicationController
  get '/signup' do
    erb :"registrations/signup"
  end

  post '/signup' do
    user = User.create(username: params[:username])
    session[:user_id] = user.id
    redirect '/'
  end
end
