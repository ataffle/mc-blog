class Post < ApplicationRecord
  include PgSearch::Model
  belongs_to :category
  belongs_to :user
  default_scope { order(updated_at: :desc) }
  has_one_attached :photo
  pg_search_scope :search_by_title_and_content,
    against: [ :title, :content ],
    using: {
      tsearch: { prefix: true }
    }
end
