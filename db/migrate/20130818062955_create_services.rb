class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :assigned_to
      t.string :status_code
      t.string :description
      t.decimal :cost
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
