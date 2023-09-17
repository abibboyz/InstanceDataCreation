# app/models/material.rb
class Material < ApplicationRecord
  belongs_to :course

  validates :title, presence: true
  validates :file_url, presence: true
end
