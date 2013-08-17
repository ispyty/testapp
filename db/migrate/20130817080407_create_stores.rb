class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :client_id
      t.string :branded_name
      t.string :status_code
      t.date :advertising_start_date
      t.date :advertising_end_date
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :url
      t.string :contact_name
      t.string :contact_email
      t.string :facility_number
      t.string :marketing_number
      t.string :logo_url

      t.timestamps
    end
  end
end
