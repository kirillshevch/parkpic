FactoryGirl.define do
  factory :photo do
    after :create do |p|
      p.remote_file_url = Faker::Avatar.image
      p.save
    end
  end

end
