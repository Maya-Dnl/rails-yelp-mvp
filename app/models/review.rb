class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: { in: 0..5, message: 'doit être entre 0 et 5' }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true

end
