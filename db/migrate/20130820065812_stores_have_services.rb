class StoresHaveServices < ActiveRecord::Migration
  def change
  	remove_column :services, :assigned_to
  	add_reference :services, :store, index:true
  end
end
