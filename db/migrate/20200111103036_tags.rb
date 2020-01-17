class Tags < ActiveRecord::Migration[5.2]
  def change
    drop_table :posts_tags
    drop_table :tags
  end
end
