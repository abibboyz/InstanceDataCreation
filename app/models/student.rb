# app/models/student.rb
class Student < ApplicationRecord
  belongs_to :user
  has_many :enrollments
  has_many :courses, through: :enrollments

  validates :user_id, presence: true, uniqueness: true
  validates :date_of_birth, presence: true
end
