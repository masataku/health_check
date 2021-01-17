FactoryBot.define do
  factory :check do
    date {Date.today}
    condition_id {2}
    symptom_id {1}
    opinion {"あいうえお"}
    attend {false}
    check {true}
    breakfast {true}
    bed_time_id {3}
    leave_early {false}
    late {false}

    association :student
    association :sheet
  end
end
