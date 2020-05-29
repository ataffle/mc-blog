class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  default_scope { order(updated_at: :desc)}
end
