class Update < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :first_name, :full_name
  end
end
