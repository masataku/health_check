class Check < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :bed_time
  belongs_to :student
  belongs_to :sheet

  with_options presence: true do
    validates :date
    validates :condition_id, numericality: {only_integer: true}
    validates :check
    validates :bed_time_id, numericality: {only_integer: true, other_than: 1}
  end  
end
