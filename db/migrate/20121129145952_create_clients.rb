class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :cell_phone
      t.string :home_phone
      t.string :email
      t.string :photo

      t.timestamps
    end
  end
end
