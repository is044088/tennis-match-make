class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user,           null: false, foreign_key: true
      t.integer :post
      t.timestamps
    end
  end
end
