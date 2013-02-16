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
#  client_email   :string(255)
#  photo          :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  stylist_id     :integer
#

class Client < ActiveRecord::Base

  belongs_to :stylist
  has_many :appointments

  # validates :client_email, :allow_blank => true
  # has_many   :services, :through => :transactions

  # mount_uploader :photo, PictureUploader
end
