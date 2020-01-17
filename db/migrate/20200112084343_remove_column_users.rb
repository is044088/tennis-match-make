class RemoveColumnUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :family_name, :string
    remove_column :users, :first_name, :string
    remove_column :users, :image_url, :string
  end
end
