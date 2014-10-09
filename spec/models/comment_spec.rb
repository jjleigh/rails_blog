require 'rails_helper'

describe Comment do

	context "before creation" do
		it "has a valid factory" do
			comment_one = build(:comment)
			expect(comment_one).to be_valid
		end
	end


	# validation tests

	it "should be invalid without a description" do
		expect(build(:comment, description: nil)).to_not be_valid
	end

	# association tests

	it "should belong to a user" do
		expect(build(:comment)).to respond_to(:user)
	end

	it "should belong to an article" do
		expect(build(:comment)).to respond_to(:article)
	end
	
end