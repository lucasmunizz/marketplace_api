FactoryBot.define do
  factory :user do
    email {FFaker::Internet.email}
      password { '123456' }
    end
end