class ChangeDataTypeStartTimeEndTimeToEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :start_time, :string
    change_column :events, :end_time, :string
  end
end
