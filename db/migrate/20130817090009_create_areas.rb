class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :display_name
      t.string :internal_name
      t.integer :area_type
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
