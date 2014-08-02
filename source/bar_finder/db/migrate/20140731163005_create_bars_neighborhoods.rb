require_relative '../../config/application.rb'
class CreateBarsNeighborhoods < ActiveRecord::Migration
  def change
    create_table :bars_neighborhoods do |t|
      t.integer :bar_id
      t.integer :neighborhood_id
    end
  end
end

