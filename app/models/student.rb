class Student < ApplicationRecord
  belongs_to :school

  def fiscal_year
    fiscal_year = Date.today.year
    if Date.today.month == 1..3
      return fiscal_year - 1
    else
      return fiscal_year
    end    
  end  
end
