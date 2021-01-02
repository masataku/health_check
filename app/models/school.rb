class School < ApplicationRecord
  has_secure_password

  with_options presence: true do
    validates :school_name
    validates :email, uniqueness: true
    validates :teacher_password
    validates :student_password
  end  
end
