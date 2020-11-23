class CreateUserChallengeSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :user_challenge_steps do |t|
      t.string :status
      t.references :user_challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
