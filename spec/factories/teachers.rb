FactoryBot.define do
  factory :teacher do
    name {Faker::Name.initials(number: 5)}
    grade {2}
    my_class {3}
    teacher_password {"12345a"}

    association :school
  end
end
