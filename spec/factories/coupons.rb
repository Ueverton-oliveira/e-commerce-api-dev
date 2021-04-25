FactoryBot.define do
  factory :coupon do
    sequence(:name) { |n| "My Coupon #{n}" }
    code { Faker::Commerce.unique.promotion_code(digits: 4) }
    status { :active }
    discount_value { rand(1..9) }
    max_use { 1 }
    due_date { Time.zone.now + 1.day }
  end
end
