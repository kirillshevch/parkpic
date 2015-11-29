FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    about { Faker::Lorem.sentence }
    password 'testing1'
    password_confirmation 'testing1'
    photos { create_list(:photo, 32) }
    after :create do |p|
      p.remote_avatar_url = Faker::Avatar.image.gsub(/^http/, 'https')
      p.save
    end
  end

end
