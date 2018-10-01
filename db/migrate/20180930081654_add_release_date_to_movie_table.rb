class AddReleaseDateToMovieTable < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :release_date, :datetime
  end
end
