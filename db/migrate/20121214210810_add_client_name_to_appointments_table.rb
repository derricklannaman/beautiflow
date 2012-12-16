class AddClientNameToAppointmentsTable < ActiveRecord::Migration
  def change
    add_column :appointments, :client_name, :string
  end
end
