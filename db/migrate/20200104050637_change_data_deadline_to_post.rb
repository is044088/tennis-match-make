class ChangeDataDeadlineToPost < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :deadline_date, :date
    change_column :posts, :deadline_time, :time
  end
end
