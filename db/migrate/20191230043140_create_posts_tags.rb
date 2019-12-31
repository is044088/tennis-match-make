class CreatePostsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_tags do |t|
      t.references :user,           null: false, foreign_key: true
      # t.references :tag,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
