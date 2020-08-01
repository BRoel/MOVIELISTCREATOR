class List < ApplicationRecord
  belongs_to :user
  has_many :movie_lists
  has_many :movies, through: :movie_lists

  validates :list_name, presence: true, length: { maximum: 100 }
end
