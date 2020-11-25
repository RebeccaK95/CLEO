class Invite < ApplicationRecord
  belongs_to :challenge
  belongs_to :inviter, class_name: 'User', foreign_key: "inviter_id"
  belongs_to :invitee, class_name: 'User', foreign_key: "invitee_id"

  def mark_as_accepted
    self.accepted = true
  end
end
