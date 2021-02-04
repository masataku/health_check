class Check < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :bed_time
  belongs_to :temperature
  belongs_to :student
  belongs_to :sheet
  has_many :check_symptoms
  has_many :symptoms, through: :check_symptoms

  with_options presence: true do
    validates :date
    validates :condition_id, numericality: {only_integer: true, greater_than: 0, less_than: 4}
    validates :check, presence: {message: :not_check}
    validates :bed_time_id, numericality: {only_integer: true, greater_than: 1, message: :not_select, less_than: 13}
    validates :temperature_id, numericality: {only_integer: true, greater_than: 1, message: :not_select, less_than: 23} 
    validates :symptoms_id, numericality: {only_integer: true, greater_than: 0, less_than: 3}
  end  
  validates :breakfast, :attend, :leave_early, :late, inclusion: {in: [true, false]}
  validates :opinion, length: {maximum: 40}
end
