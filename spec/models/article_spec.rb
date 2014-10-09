require 'rails_helper'


describe Article do 

	# validation tests
	it "is invalid without a title" do
		expect(build(:article, title: nil)).to_not be_valid
	end

	it "is invalid without text" do
		expect(build(:article, text: nil)).to_not be_valid
	end

	it "is invalid under 4 characters" do
		expect(build(:article, title: "1234")).to_not be_valid
	end

	it "is invalid under 300 characters" do
		expect(build(:article, text: 0..299)).to_not be_valid
	end


	# association tests

	it "should belong to a user" do
		expect(build(:article)).to respond_to(:user)
	end
	it "should have many users through comments" do
		expect(build(:article)).to respond_to(:users)
	end
	it "should have many comments" do
		expect(build(:article)).to respond_to(:comments)
	end

end