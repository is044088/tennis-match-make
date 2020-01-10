class AddDataCommunicationToArticle < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :communication, :com_low
    add_column :posts, :com_high, :integer
  end
end
