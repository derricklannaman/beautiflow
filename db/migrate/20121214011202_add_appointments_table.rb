class AddAppointmentsTable < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :stylist_id
      t.string :client_id
      t.datetime  :appointment_time

      t.timestamps
    end
  end

end
