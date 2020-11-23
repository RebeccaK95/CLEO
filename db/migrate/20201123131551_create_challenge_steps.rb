class CreateChallengeSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :challenge_steps do |t|
      t.string :description
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
