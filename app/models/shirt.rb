class Shirt < ActiveRecord::Base
  has_many :wardrobes
  has_many :users, through: :wardrobes
end
