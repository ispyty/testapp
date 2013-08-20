class FixStoresHaveClients < ActiveRecord::Migration
  def change
  	remove_column :stores, :client_id
  	remove_column :stores, :client_ids
  	remove_reference :stores, :clients
  	add_reference :stores, :client, index: true
  end
end
