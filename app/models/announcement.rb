# app/models/announcement.rb
class Announcement < ApplicationRecord
  belongs_to :course

  validates :title, presence: true
  validates :content, presence: true
end

