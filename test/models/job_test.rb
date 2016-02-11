require 'test_helper'

class JobTest < ActiveSupport::TestCase

  test "job should have title" do
  	job = Job.new
		job.valid?
  	assert job.errors.keys.include?(:title), "Saved the job without the title"
  end

  test "job should have description" do
  	job = Job.new
		job.valid?
	 	assert job.errors.keys.include?(:description), "Saved the job without description"
  end

  test "job should have requirements" do
  	job = Job.new
		job.valid?
  	assert job.errors.keys.include?(:requirements), "Saved the job without requirements"
  end

  # test "job should have a list of tags" do 
  # 	job = Job.new
  # 	assert_equal(tagged_with(), "don't know")
  # end
end
