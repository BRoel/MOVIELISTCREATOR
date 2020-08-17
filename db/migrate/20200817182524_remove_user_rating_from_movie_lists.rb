class RemoveUserRatingFromMovieLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :movie_lists, :user_rating, :integer
  end
end
