FactoryBot.define do
  factory :user do
    nickname              { 'なかやまきんに君' }
    email                 { Faker::Internet.email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end
