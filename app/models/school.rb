class School < ApplicationRecord
  has_secure_password

  with_options presence: true do
    validates :school_name
    validates :email, uniqueness: true, format: {with: /\A[a-z0-9]{1,}+@{1,1}+[a-z0-9]{1,}\z/, message: 'を入力してください'}
    with_options format: {with: /\A[a-z0-9]{6,}\z/, message: 'を入力してください'} do
      validates :teacher_password
      validates :student_password
    end
  end  
end
