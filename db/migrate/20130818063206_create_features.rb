class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.string :category
      t.integer :assigned_to

      t.timestamps
    end
  end
end
