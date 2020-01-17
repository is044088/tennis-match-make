class RemoveDataColumnToUserId < ActiveRecord::Migration[5.2]
  def change
    remove_reference :posts_tags, :user, null: false, foreign_key: true
    add_reference :posts_tags, :post, null: false, foreign_key: true
  end
end
