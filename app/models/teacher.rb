class Teacher < ApplicationRecord
  belongs_to :school

  with_options presence: true do
    validates :name
    validates :grade, numericality: {only_integer: true, greater_than: 0, less_than: 4}
    validates :my_class, numericality: {only_integer: true, greater_than: 0}
    validates :teacher_password
  end  
end
