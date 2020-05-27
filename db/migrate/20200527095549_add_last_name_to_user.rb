class AddLastNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :author, :boolean
    add_column :users, :title, :string
  end
end
