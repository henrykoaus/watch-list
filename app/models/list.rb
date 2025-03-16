class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["Action", "Comedy", "Drama", "Fantasy", "Hero", "Horror", "Romance", "SF"]

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
