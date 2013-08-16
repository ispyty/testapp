class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :branded_name
      t.integer :status
      t.date :advertising_start_date
      t.date :advertising_end_date
      t.string :url
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :logo_url

      t.timestamps
    end
  end
end
