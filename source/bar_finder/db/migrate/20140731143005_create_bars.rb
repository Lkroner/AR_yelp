require_relative '../../config/application.rb'

class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :rating
      t.string :address
      t.string :image_url
      t.timestamps
    end
  end
end
