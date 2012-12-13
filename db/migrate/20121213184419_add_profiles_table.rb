class AddProfilesTable < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :nickname
      t.string :salon_name
      t.string :salon_address
      t.text :bio
      t.text :schedule

      t.timestamps
    end
  end

end
