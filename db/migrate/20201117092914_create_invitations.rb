class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.boolean :invited
      t.boolean :accepted, default: false
      t.references :challenge, null: false, foreign_key: true
      t.references :inviter, null: false
      t.references :invitee, null: false

      t.timestamps
    end

    add_foreign_key :invitations, :users, column: :inviter_id
    add_foreign_key :invitations, :users, column: :invitee_id
  end
end
