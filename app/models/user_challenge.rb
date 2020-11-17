class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  STATUSES = ["in_progress", "completed"].freeze

  validates :user, :challenge, :status, presence: true
  validates :status, inclusion: { in: STATUSES }

  def update_status_to_completed
    status = "completed"
  end
end
