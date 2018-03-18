FactoryBot.define do
  factory :recipient do
    name "name"
    email { Faker::Internet.email }
    address { Faker::Address.street_address }
    phone_number "+48 555 555 555"
    points 1
  end
end
