class RemoveColumnAbilities < ActiveRecord::Migration[5.2]
  def change
  
    remove_column :abilities, :total, :integer

  end

end
