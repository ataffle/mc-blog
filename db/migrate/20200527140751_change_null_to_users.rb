class ChangeNullToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:users, :admin, from: nil, to: false)
  end
end
