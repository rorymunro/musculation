FactoryGirl.define do
  factory :user do
    name     "Rory Munro"
    email    "rory@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end