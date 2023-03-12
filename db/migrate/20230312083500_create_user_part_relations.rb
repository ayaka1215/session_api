class CreateUserPartRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :user_part_relations do |t|
      t.references :user, foreign_key: true
      t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
