require 'faker'
FactoryGirl.define do
  factory :job do |f|

  	f.title {Faker::Name.first_name }
    f.description {Faker::Name.last_name }
    
  end

end
