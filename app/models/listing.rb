class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations

  # 必須項目
  validates :category, presence: true
  validates :program_time, presence: true
  validates :program_level, presence: true
  validates :location, presence: true

  geocoded_by :meeting_place
  after_validation :geocode, :if => :meeting_place_changed?

end
