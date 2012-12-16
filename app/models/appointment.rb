# == Schema Information
#
# Table name: appointments
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  stylist_id       :integer
#  client_id        :integer
#  appointment_date :date
#  client_name      :string(255)
#

class Appointment < ActiveRecord::Base

  belongs_to :stylist
  belongs_to :client
end
