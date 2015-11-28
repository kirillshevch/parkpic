FactoryGirl.define do
  factory :photo do
    user nil
    after :create do |p|
      p.remote_file_url = Faker::Avatar.image
      p.save
    end
  end

end
