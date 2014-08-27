class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments 
	has_many :users :through => :comments

	validates :title, presence: true,
										length: { minimum: 5 }
end
