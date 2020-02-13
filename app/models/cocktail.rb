class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses


  validates :name, uniqueness: true, presence: true
end


  # validates :content, presence: true
  # validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
