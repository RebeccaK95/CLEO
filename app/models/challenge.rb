class Challenge < ApplicationRecord
  belongs_to :category
  has_many :users, through: :user_challenges

<<<<<<< HEAD
=======

>>>>>>> a30cec8773ce58c2f29c1013578d4a3a466c1fca
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
