# app/models/teacher.rb
class Teacher < ApplicationRecord
  belongs_to :user
  has_many :courses

  validates :user_id, presence: true, uniqueness: true
  validates :qualification, presence: true
end

