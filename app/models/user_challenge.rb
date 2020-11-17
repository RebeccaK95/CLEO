class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  STATUSES = ["in_progress", "completed"]

  validates :user, :challenge, :status, presence: true
  validates :status, defaultinclusion: { in: STATUSES }
end
