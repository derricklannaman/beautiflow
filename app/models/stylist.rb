# == Schema Information
#
# Table name: stylists
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  stylist_email   :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_name       :string(255)
#

class Stylist < ActiveRecord::Base

  has_secure_password

  extend FriendlyId
  friendly_id :user_name, :use => :slugged

  has_many :clients
  has_many :services


  # mount_uploader :photo, PictureUploader

  # validates :first_name, presence: true, length: { maximum: 50 }
  # validates :last_name, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :stylist_email, presence: true, format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
  # validates :password, length: { minimum: 6 }
  # validates :password_confirmation, presence: true
end
