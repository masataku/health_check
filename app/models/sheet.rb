class Sheet < ApplicationRecord
  belongs_to :school
  has_many :checks

  with_options presence: true do
    validates :grade, numericality: {only_integer: true, greater_than: 0, less_than: 4}
    validates :my_class, numericality: {only_integer: true, greater_than: 0}
    validates :year, numericality: {only_integer: true}, length: {is: 4}
    validates :date 
  end  
end
