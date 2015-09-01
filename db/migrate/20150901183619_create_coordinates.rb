class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
    add_column :latitude, :longitude
      t.timestamps null: false
    end
  end
end
