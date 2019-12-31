class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title,           null: false
      t.string :place,           null: false
      t.string :venue,           null: false
      t.string :address,           null: false
      t.date :date,           null: false
      t.time :start_time,           null: false
      t.time :end_time,           null: false
      t.date :deadline_date,           null: false
      t.time :deadline_time,           null: false
      t.text :explanation,           null: false
      t.integer :cost           
      t.integer :recruit,           null: false
      t.integer :average
      t.integer :total
      t.integer :communication
      t.integer :age
      t.string :sex
      t.string :dominant
      t.references :user,           null: false, foreign_key: true
      t.string :image
      t.timestamps
    end
    add_index :posts, :title
  end
end
