class RemoveDataDeadlineToPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :deadline_date, :date
    remove_column :posts, :deadline_time, :time
  end
end
