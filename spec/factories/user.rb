FactoryGirl.define do
  factory :user do
    name "User"

    factory :user_with_shows do
      transient do
        shows_count 3
      end

      after(:create) do |user, conf|
        create_list(:show, conf.shows_count, user: user)
      end
    end
  end
end
