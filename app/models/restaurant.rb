class Restaurant < ApplicationRecord

  SPECIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: SPECIES }

  has_many :reviews, dependent: :destroy
end
