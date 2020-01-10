class RenameTotalColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :average, :ave_low
    rename_column :posts, :total, :ave_high
  end
end
