require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save new job with title" do
  	job = Job.new
  	assert_not job.save
  end
end
