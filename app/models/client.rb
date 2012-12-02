# == Schema Information
#
# Table name: clients
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  street_address :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip            :string(255)
#  cell_phone     :string(255)
#  home_phone     :string(255)
#  photo          :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  client_email   :string(255)
#

class Client < ActiveRecord::Base
  attr_accessible :cell_phone, :city, :client_email, :first_name, :home_phone,
                  :last_name, :photo, :state, :street_address, :zip

  belongs_to :stylist
  has_many   :services, :through => :transactions
end
