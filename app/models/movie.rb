class Movie < ApplicationRecord
    has_many :movie_lists
    has_many :lists, through: :movie_lists

    validates :title, presence: true, length: { maximum: 100 }
    validates :rating, presence: true, length: { maximum: 100 }
    validates :released, inclusion: { in: [true, false] }
    with_options if: :released? do |movie|
        movie.validates :release_date, presence: true
        movie.validates :release_date, numericality: {
          less_than_or_equal_to: Date.today.year
        }
      end
    validates :genre, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 100 }

    def released?
        released
    end
end
