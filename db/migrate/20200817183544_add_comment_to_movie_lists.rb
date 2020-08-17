class AddCommentToMovieLists < ActiveRecord::Migration[6.0]
  def change
    add_column :movie_lists, :comment, :text
  end
end
