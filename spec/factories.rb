FactoryGirl.define do
  factory :user do
    name     "Rory Munro"
    email    "rory@example.com"
    weight    "23"
    bench    "23"
    password "foobar"
    password_confirmation "foobar"
  end
end