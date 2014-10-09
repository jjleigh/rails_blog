require 'faker'

FactoryGirl.define do
	factory :article do
		title {Faker::Lorem.word}
		text {Faker::Lorem.paragraphs(20)}
	end
end