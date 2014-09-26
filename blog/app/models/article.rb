class Article < ActiveRecord::Base
	default_scope { order('created_at DESC')}

	belongs_to :user
	has_many :comments, dependent: :destroy 
	has_many :users, :through => :comments

	validates :title, presence: true
	validates	:title, length: { minimum: 6 }
	validates :text, presence: true
	validates :text, length: { minimum: 300}
end
