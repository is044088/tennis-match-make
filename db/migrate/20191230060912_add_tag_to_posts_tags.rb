class AddTagToPostsTags < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts_tags, :tag, null: false, foreign_key: true
  end
end
