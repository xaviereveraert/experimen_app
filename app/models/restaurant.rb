class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :tel_nr, presence: true
  validates :rating, inclusion: { in: 1..5 }
  has_many :reviews, dependent: :destroy
end
