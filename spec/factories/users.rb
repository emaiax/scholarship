FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "email-#{n}@scholarship.com"
    end

    name     { Faker::Name.name }
    password { Faker::Internet.password }

    factory :secretary do
      role :secretary
      association :school, strategy: :build
    end

    factory :admin do
      role :admin
    end
  end
end
