class Challenge < ApplicationRecord
  belongs_to :category
  has_many :users, through: :user_challenges
end
