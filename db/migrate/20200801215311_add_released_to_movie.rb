class AddReleasedToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :released, :boolean
  end
end
