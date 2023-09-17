# app/models/attendance.rb
class Attendance < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :date, presence: true
end
