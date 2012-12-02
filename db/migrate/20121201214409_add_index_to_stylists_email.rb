class AddIndexToStylistsEmail < ActiveRecord::Migration
  def change
    add_index :stylists, :stylist_email, unique: true
    add_index :clients, :client_email, unique: true
  end
end
