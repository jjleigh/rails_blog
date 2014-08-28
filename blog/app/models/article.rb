class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments 
	has_many :users, :through => :comments

	validates :title, presence: true
	validates	:title, length: { minimum: 6 }
	validates :text, presence: true
	validates :text, length: { minimum: 300}
end
