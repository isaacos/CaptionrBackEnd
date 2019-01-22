class SwitchVotesToComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :upvote
    remove_column :photos, :downvote
    add_column :comments, :upvote, :integer, :default => 0
    add_column :comments, :downvote, :integer, :default => 0
  end
end
