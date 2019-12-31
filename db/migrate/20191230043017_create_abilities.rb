class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.references :user,           null: false, foreign_key: true
      t.integer :experience,        null: false
      t.string :dominant,           null: false
      t.integer :serve,             null: false
      t.integer :return,            null: false
      t.integer :stroke,            null: false
      t.integer :footwork,          null: false
      t.integer :mental,            null: false
      t.integer :average,           null: false
      t.integer :total,             null: false
      t.integer :communication,     null: false
      t.timestamps
    end
  end
end
