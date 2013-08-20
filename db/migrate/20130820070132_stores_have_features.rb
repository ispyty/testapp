class StoresHaveFeatures < ActiveRecord::Migration
  def change
  	remove_column :features, :assigned_to
  	add_reference :features, :store, index:true
  end
end
