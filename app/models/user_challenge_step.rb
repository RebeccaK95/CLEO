class UserChallengeStep < ApplicationRecord
  belongs_to :user_challenge
  belongs_to :challenge_step
end
