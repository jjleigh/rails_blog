require 'faker'

FactoryGirl.define do 
	factory :comment do
		description {Faker::Lorem.sentence}
	end
end