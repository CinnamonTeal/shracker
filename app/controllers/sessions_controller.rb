class SessionsController < ApplicationController
  get '/signin' do
    erb :"sessions/signin"
  end

  post '/signin' do
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    redirect '/'
  end
end
