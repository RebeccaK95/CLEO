class Tip < ApplicationRecord
  belongs_to :category
  validates :title, :category_id, presence: true

  # include PgSearch::Model
  # pg_search_scope :pg_search,
  # against: [:category_id],
  # using: {
  #   tsearch: {prefix: true}
  # }

end
