class AddChallengeStepIdToUserChallengeStep < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_challenge_steps, :challenge_step, index: true
  end
end
