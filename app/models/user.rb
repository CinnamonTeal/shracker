class User < ActiveRecord::Base
  has_many :wardrobes
  has_many :shirts,  through: :wardrobes
end
