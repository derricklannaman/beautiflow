class RemoveEmailFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :email
  end

  def down
    add_column :clients, :email, :string
  end
end
