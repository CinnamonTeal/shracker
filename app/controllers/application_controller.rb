class ApplicationController < Sinatra::Base
  set :root, File.join(__dir__, "..")
  enable :method_override

  enable :sessions
  set :session_secret, 'bk-002 is awesome!'

  helpers do
    def recent
      if session[:last_seen]
        @recent ||= Shirt.find(session[:last_seen])
      end
    end

    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end
end
