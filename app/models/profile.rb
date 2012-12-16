# == Schema Information
#
# Table name: profiles
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  nickname      :string(255)
#  salon_name    :string(255)
#  salon_address :string(255)
#  bio           :text
#  schedule      :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Profile < ActiveRecord::Base

  belongs_to :stylists

end
