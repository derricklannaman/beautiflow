class AddStylistEmailToStylists < ActiveRecord::Migration
  def change
    add_column :stylists, :stylist_email, :string
  end
end
