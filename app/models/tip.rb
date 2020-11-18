class Tip < ApplicationRecord
  belongs_to :category
  validates :title, :category_id, :image, presence: true

  include PgSearch::Model
  pg_search_scope :pg_search,
  against: [:title, :description],
  using: {
    tsearch: {prefix: true}
  }
end
