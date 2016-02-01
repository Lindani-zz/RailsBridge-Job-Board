require 'spec_helper'

	describe Job do
	  it "has a valid factory" do
	  	FactoryGirl.create(:job).should be_valid
	  end
	  it "is invalid without a title"
	  it "is invalid without a description"
	  it "returns a job's full name as a string"
	 end
  # it { should validate_presence_of(:title) }
  # it { should ensure_length_of(:title).is_at_least(5) }
  # it { should validate_presence_of(:description) }
  # it { should ensure_length_of(:description).is_at_least(10) }

