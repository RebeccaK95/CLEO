class Invite < ApplicationRecord
  belongs_to :challenge
  belongs_to :inviter, class_name: 'User'
  belongs_to :invitee, class_name: 'User'

  def mark_as_accepted
    self.accepted = true
  end
end
