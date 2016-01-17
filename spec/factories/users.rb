FactoryGirl.define do
  GEN_PASS=Faker::Internet.password

  factory :user do
    email Faker::Internet.email
    password GEN_PASS
    password_confirmation GEN_PASS
  end

end
