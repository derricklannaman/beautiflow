class RemoveStylistIdFromAppointmentsTable < ActiveRecord::Migration
  def change
    remove_column :appointments, :stylist_id
    remove_column :appointments, :client_id

    add_column :appointments, :stylist_id, :integer
    add_column :appointments, :client_id, :integer
  end
end
