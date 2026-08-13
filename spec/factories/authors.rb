FactoryBot.define do
  factory :author do
    name { FFaker::Name.name }
    bio { FFaker::Lorem.paragraph }
  end
end
