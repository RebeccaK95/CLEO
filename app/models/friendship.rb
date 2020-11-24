class Friendship < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :followed, class_name: 'User'

  def mark_as_accepted
    self.accepted = true
  end
end
