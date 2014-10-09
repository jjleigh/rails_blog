require 'rails_helper'

describe User do 

	context "before creation" do
		it "has a valid factory" do
			user_one = build(:user)
			expect(user_one).to be_valid
		end
	end


	# validation tests

	it 'is invalid without a name' do
		expect(build(:user, name: nil)).to_not be_valid
	end

	it "is invalid without an email" do
		expect(build(:user, email: nil)).to_not be_valid
	end 

	it "is invalid without a password" do
		expect(build(:user, password: nil)).to_not be_valid
	end 

	it "is invalid without a password_confirmation" do
		expect(build(:user, password_confirmation: nil)).to_not be_valid
	end

	# association tests

	it 'should have many articles' do
		expect(build(:user)).to respond_to(:articles)
	end

	it 'should have many comments' do
		expect(build(:user)).to respond_to(:comments)
	end	

end







