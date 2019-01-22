class AddDefaultsToPhotos < ActiveRecord::Migration[5.2]
  def change
    change_column :photos, :upvote, :integer, :default => 0
    change_column :photos, :downvote, :integer, :default => 0
  end
end
