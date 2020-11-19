class Challenge < ApplicationRecord
  belongs_to :category
  has_many :users, through: :user_challenges

  include PgSearch::Model
  pg_search_scope :pg_search,
    against: [:name, :description],
    associated_against: {
        category: [ :name ]
    },
    using: {
      tsearch: {prefix: true}
  }
end
