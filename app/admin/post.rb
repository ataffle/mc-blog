ActiveAdmin.register Post do

  index do
      selectable_column
      column :id
      column :title
      column :category
      column :user
      column :updated_at
      actions
    end

  permit_params :title, :content, :category_id, :user_id, :photo
end
