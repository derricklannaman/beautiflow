class AddStylistIdToClientTable < ActiveRecord::Migration
  def change
    add_column :clients, :stylist_id, :integer
  end
end
