class RenameInvitationsToInvites < ActiveRecord::Migration[6.0]
  def change
    rename_table :invitations, :invites
  end
end
