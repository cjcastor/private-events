class ChangeTimetoDate < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :event_date, :event_date
    remove_column :events, :time, :datetime
  end
end
