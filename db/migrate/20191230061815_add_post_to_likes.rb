class AddPostToLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :post, :integer
    add_reference :likes, :post, null: false, foreign_key: true
  end
end
