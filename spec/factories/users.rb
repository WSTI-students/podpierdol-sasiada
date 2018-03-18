FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    nickname { Faker::GameOfThrones.character }
    phone_number "+48 555 555 555"
    password "password"
    password_confirmation "password"
  end
end
