# == Schema Information
#
# Table name: transactions
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  service_id :integer
#  date       :date
#  sales      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Transaction < ActiveRecord::Base

  has_many :services
  belongs_to :client
end
