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

    form do |f|
      f.inputs "Details" do
        f.input :title
        f.input :content
        f.input :category
        f.input :user
        f.input :photo, as: :file
      end
      f.actions
    end

  permit_params :title, :content, :category_id, :user_id, :photo
end
