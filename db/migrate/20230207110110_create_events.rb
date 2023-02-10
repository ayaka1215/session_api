class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :place
      t.string :image
      t.timestamps
    end
  end
end
