class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
  # validates_associated :reviews
end
