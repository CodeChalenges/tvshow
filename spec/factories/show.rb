FactoryGirl.define do
  factory :show do
    name "Show"
    schedule DateTime.now
    association :user
    site { 'www.google.com' }
  end
end
