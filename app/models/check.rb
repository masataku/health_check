class Check < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :bed_time
  belongs_to :student
  belongs_to :sheet
  has_many :check_symptoms
  has_many :symptoms, through: :check_symptoms

  with_options presence: true do
    validates :date
    validates :condition_id, numericality: {only_integer: true}
    validates :check
    validates :bed_time_id, numericality: {only_integer: true, other_than: 1}
  end  
  validates :opinion, length: {maximum: 40}
  validates :symptoms_id, inclusion: {in: [true, false]}
  validates :breakfast, inclusion: {in: [true, false]}
end
