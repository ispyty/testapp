class RemoveLatitudeAndLongitudeFromStore < ActiveRecord::Migration
  def change
  	remove_column :stores, :latitude
  	remove_column :stores, :longitude
  end
end
