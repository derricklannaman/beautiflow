class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :price
      t.integer :stylist_id
      t.text :description

      t.timestamps
    end
  end
end
