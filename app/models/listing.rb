class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos

  # 必須項目
  validates :category, presence: true
  validates :program, presence: true
end
