class StoresHaveClients < ActiveRecord::Migration
  def change
  	remove_reference :stores, :clients, index: true
  	add_reference :stores, :client, index: true
  end
end
