class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :description
      t.text :steps
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
