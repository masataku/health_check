FactoryBot.define do
  factory :student do
    grade {2}
    my_class {3}
    number {12}
    first_name {Faker::Name.initials(number: 3)}
    last_name {Faker::Name.initials(number: 2)}
    first_name_kana {"アイウ"}
    last_name_kana {"アイウ"}
    year {2020}
    student_password {"12345a"}

    association :school
  end
end
