FactoryBot.define do
  factory :check do
    date {Date.today}
    condition_id {2}
    symptoms_id {1}
    opinion {"あいうえお"}
    attend {true}
    check {true}
    breakfast {true}
    bed_time_id {3}
    temperature_id {4}
    leave_early {false}
    late {false}

    association :student
    association :sheet
  end
end
