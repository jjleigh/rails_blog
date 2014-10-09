require 'rails_helper'

describe User do 

	# context "before creation" do
	# 	it "has a valid factory" do
	# 		user_one = build(:user)
	# 		expect(user_one).to be_valid
	# 	end
	# end


	# validation tests

	it 'is invalid without a name' do
		expect(build(:user, name: nil)).to_not be_valid
	end
	
end