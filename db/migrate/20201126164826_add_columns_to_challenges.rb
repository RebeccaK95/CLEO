class AddColumnsToChallenges < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :benefit, :text
    add_column :challenges, :participant_base, :integer
    add_column :challenges, :duration, :integer
  end
end
