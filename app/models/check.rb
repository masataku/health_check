class Check < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :bed_time
  belongs_to :student
  belongs_to :sheet
end
