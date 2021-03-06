class School < ApplicationRecord
  has_secure_password
  has_many :teachers
  has_many :students
  has_many :sheets

  with_options presence: true do
    validates :school_name, :head_teacher
    validates :email, uniqueness: true, format: {with: /\A[a-z0-9_.-]{1,}+@{1,1}+[a-z0-9-._]{1,}\z/i, message: 'を適切に入力してください'}
    validates :password_confirmation
    with_options format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,}\z/, message: 'を適切に入力してください'} do
      validates :password
      validates :teacher_password
      validates :student_password
    end
  end  
end
