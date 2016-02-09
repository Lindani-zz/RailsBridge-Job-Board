require 'test_helper'

class JobTest < ActiveSupport::TestCase
 
  test "should not save new job without title" do
  	job = Job.new
  	job.valid?
  	assert job.errors.keys.include?(:title), "Saved the job without the title"
  end
 
  test "job should have description" do
	 	job = Job.new
	 	job.valid?
	 	assert job.errors.keys.include?(:description), "Saved the job description"
  end
end
