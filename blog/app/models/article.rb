class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments 
	has_many :users, :through => :comments

	validates :title, presence: true,
		validates	 :title, length: { minimum: 6 }
end
