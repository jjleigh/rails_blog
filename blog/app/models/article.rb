class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments through :users

	
	validates :title, presence: true,
										length: { minimum: 5 }
end
