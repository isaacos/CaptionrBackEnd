class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :url
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
