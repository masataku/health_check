class Sheet < ApplicationRecord
  belongs_to :school
  has_many :checks
end
