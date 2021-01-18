class Symptom < ApplicationRecord
  has_many :check_symptoms
  has_many :checks, through: :check_symptoms

  validates :name, presence: true
end
