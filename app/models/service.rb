# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  price       :decimal(, )
#  stylist_id  :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ActiveRecord::Base
  # attr_accessible :description, :name, :price, :stylist_id

  has_many :transactions
  belongs_to :stylist
end
