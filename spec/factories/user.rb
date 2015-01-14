FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "tester#{n}@email.com" }
    sequence(:password) { |n| "password#{n}" }
  end
end
