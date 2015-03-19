class CreateWardrobes < ActiveRecord::Migration
  def change
    create_table :wardrobes do |t|
      t.belongs_to :user
      t.belongs_to :shirt
    end
  end
end
