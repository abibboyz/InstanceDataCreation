# app/models/assignment.rb
class Assignment < ApplicationRecord
  belongs_to :course

  validates :title, presence: true
  validates :description, presence: true
end
