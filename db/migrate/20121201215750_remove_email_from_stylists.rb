class RemoveEmailFromStylists < ActiveRecord::Migration
  def up
    remove_column :stylists, :email
  end

  def down
    add_column :stylists, :email, :string
  end
end
