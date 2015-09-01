class AddFields < ActiveRecord::Migration
  def change
  	add_column :coordinates, :latitude, :string
  	add_column :coordinates, :longitude, :string
  end
end
