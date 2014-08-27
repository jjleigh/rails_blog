class User < ActiveRecord::Base
	has_many :articles, :through => :comments
	has_many :comments

	has_many :articles

	validates_presence_of :name, :email, :password
end
