# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "person#{n}@example.com"
    end
    password              'great_pass_1'
    password_confirmation 'great_pass_1'
  end
end
