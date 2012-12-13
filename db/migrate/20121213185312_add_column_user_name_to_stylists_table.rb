class AddColumnUserNameToStylistsTable < ActiveRecord::Migration
  def change
    add_column :stylists, :user_name, :string
  end
end
