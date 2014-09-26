class User < ActiveRecord::Base
	has_secure_password
	
	has_many :articles, :through => :comments
	has_many :comments

	has_many :articles, dependent: :destroy

	validates_presence_of :name, :email
	validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  mount_uploader :url, AvatarUploader
end
