class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  before_validation :start_challenge, on: :create
  has_many :user_challenge_steps, dependent: :destroy

  STATUSES = ["in_progress", "completed"].freeze

  validates :user, :challenge, :status, presence: true
  validates :status, inclusion: { in: STATUSES }

  def mark_challenge_as_completed
    self.status = "completed"
  end

  private

  def start_challenge
    self.status = "in_progress"
  end
end
