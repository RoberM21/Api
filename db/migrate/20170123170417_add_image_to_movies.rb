class AddImageToMovies < ActiveRecord::Migration
  def up
    add_attachment :movies, :image
  end

  def down
    remove_attachment :movies, :image
  end
end
