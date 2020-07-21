class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  default_scope { order(updated_at: :desc) }
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
    against: { title: 'A', content: 'B' },
    associated_against: { user: [:full_name], category: [:title] },
    # ignoring: :accents,
    using: {
      tsearch: { prefix: true }
    }
end
