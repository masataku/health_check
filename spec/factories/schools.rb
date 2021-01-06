FactoryBot.define do
  factory :school do
    school_name {Faker::Lorem.sentence}
    email {Faker::Internet.free_email}
    password {"12345a"}
    password_confirmation {password}
    teacher_password {"12345b"}
    student_password {"12345c"}
  end  
end  