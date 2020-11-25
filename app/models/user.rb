class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :challenges, through: :user_challenges
  has_many :user_challenges
  has_one :footprint
  has_many :invitations, class_name: self.to_s, as: :invited_by
  has_many :invites, class_name: 'Invite', foreign_key: 'invitee_id'
  has_many :invites, class_name: 'Invite', foreign_key: 'inviter_id'
  has_many :friendships, class_name: 'Friendship', foreign_key: 'follower_id'
  has_many :friendships, class_name: 'Friendship', foreign_key: 'followed_id'

  after_create :create_footprint

  validates :email, :encrypted_password, presence: true
  validates :email, format: { with: Devise.email_regexp }

private

  def create_footprint
      Footprint.create(user_id: self.id, score: rand(4000..5000))
  end
end
