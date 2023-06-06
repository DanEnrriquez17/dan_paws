class Pet < ApplicationRecord
  CATEGORIES = ["Dog", "Cat"]
  belongs_to :user
  has_many :adoptions
  has_many :users, through: :adoptions
  validates :category, inclusion: { in: CATEGORIES }
end
