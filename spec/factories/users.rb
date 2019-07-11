FactoryBot.define do
  factory :user do
    password {'mypassword'}
    sequence(:name) { |n| "user#{n}" }
    sequence(:email) { |n| "email#{n}@.com" }
  end
end
