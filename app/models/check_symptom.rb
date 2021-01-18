class CheckSymptom < ApplicationRecord
  belongs_to :check
  belongs_to :symptom
end
