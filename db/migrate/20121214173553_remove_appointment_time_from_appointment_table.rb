class RemoveAppointmentTimeFromAppointmentTable < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment_time
    add_column :appointments, :appointment_date, :date
  end


end
