class ApplicationController < Sinatra::Base
  set :root, File.join(__dir__, "..")
  enable :sessions
  set :session_secret, 'bk-002 is awesome!'

  helpers do
    def recent
      if session[:last_seen]
        @recent ||= Shirt.find(session[:last_seen])
      end
    end
  end
end
