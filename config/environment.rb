$LOAD_PATH << '.'

require 'bundler'
Bundler.require

# Models
require 'app/models/shirt'
require 'app/models/user'

# Controllers
require 'app/controllers/application_controller'
require 'app/controllers/home_controller'
require 'app/controllers/shirts_controller'
require 'app/controllers/registrations_controller'
require 'app/controllers/sessions_controller'

ActiveRecord::Base.establish_connection({
    adapter: 'postgresql',
    host: 'localhost',
    database: 'shracker_development'
  }
)
