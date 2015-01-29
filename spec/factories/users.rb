FactoryGirl.define do
  factory :user do
    name "Test User"
    email "test@example.com"
    password "please123"

  # Traits allow you to group attributes together and then apply them to any factory.
    trait :admin do
      role 'admin'
    end

  end
end
