class AddStylistsTable < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :first_name
      t.string :last_name
      t.string :stylist_email
      t.string :password_digest

      t.timestamps

    end
  end
end
