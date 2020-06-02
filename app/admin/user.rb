ActiveAdmin.register User do

  index do
      selectable_column
      column :id
      column :email
      column :full_name
      column :title
      column :admin
      column :author
      column :created_at
      actions
  end

  form do |f|
    f.inputs "Sign up" do
      f.input :email
      # f.input :password
    end
    f.inputs "Details" do
      f.input :full_name
      f.input :title
      f.input :photo, as: :file
    end
    f.inputs "Access" do
      f.input :admin
      f.input :author
    end
    f.actions
  end

  permit_params :email, :full_name, :admin, :author, :title, :photo
end
