# app/models/enrollment.rb
class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :student
  belongs_to :course

  validates :user_id, presence: true
  validates :student_id, presence: true
  validates :course_id, presence: true
end
