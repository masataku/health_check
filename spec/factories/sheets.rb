FactoryBot.define do
  factory :sheet do
    grade {2}
    my_class {3}
    year {2020}
    date {Date.today}

    association :school
  end
end
