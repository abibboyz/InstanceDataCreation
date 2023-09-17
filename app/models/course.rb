# app/models/course.rb
class Course < ApplicationRecord
    has_many :enrollments
    has_many :students, through: :enrollments
  
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
  end
  