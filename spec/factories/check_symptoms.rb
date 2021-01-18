FactoryBot.define do
  factory :check_symptom do
    association :check
    association :symptom
  end
end
