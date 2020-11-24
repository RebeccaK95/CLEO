class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.boolean :accepted, default: false
      t.references :follower, null: false
      t.references :followed, null: false

      t.timestamps
    end

    add_foreign_key :friendships, :users, column: :follower_id
    add_foreign_key :friendships, :users, column: :followed_id
  end
end
