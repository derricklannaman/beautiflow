class AddIndexToStylistTable < ActiveRecord::Migration
  def change
    add_index :stylists, :user_name, unique: true
  end
end
