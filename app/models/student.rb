class Student < ApplicationRecord
  belongs_to :school
  has_many :checks

  with_options presence: true do
    validates :grade, numericality: {only_integer: true, greater_than: 0, less_than: 4}
    validates :my_class, numericality: {only_integer: true, greater_than: 0}
    validates :number, numericality: {only_integer: true, greater_than: 0}
    validates :student_password
    validates :first_name
    validates :last_name
    validates :year, numericality: {only_integer: true}, length: {is: 4}
    with_options format: {
      with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/,
      message: "全角カタカナのみで入力して下さい"} do
      validates :first_name_kana
      validates :last_name_kana
    end  
  end
end
