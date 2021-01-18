class Symptom < ApplicationRecord
  has_many :checkss, through: :check_symptoms
  has_many :check_symptoms
end
