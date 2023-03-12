class AddIsPermittedIsAdminToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_permitted, :boolean, null: false, default: false
    add_column :users, :is_admin, :boolean, null: false, default: false
  end
end
