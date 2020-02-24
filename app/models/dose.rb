class Dose < ApplicationRecord
  # validates :description, presence: true
  # validates :cocktail, presence: true
  # validates :ingredient, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
  # belongs_to :cocktail
  # belongs_to :ingredient
  # validates :cocktail, uniqueness: { scope: :ingredient }
end
