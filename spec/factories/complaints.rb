FactoryBot.define do
  factory :complaint do
    title { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph(10) }
    status "draft"

    association :user, factory: :user
    association :recipient, factory: :recipient

    after(:create) do |complaint|
      complaint.confirmers << create_list(:user, 10)
    end
  end
end
