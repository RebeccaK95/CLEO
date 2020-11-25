class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page = true
    @show_page = true
    # Score
    @user_footprint = Footprint.find_by(user_id: current_user.id)
    @score = @user_footprint&.score
    # User challenges (my challenges)
    @user_challenges = UserChallenge.where(user_id: current_user&.id)
    # Randomly selected tips
    @random_tips = Tip.order("RANDOM()").limit(4)
    # Invitations
    @invites = Invite.where(invitee: current_user)
    @open_invites = @invites.where(accepted: false)
    # Friendship invitations
    @friendships = Friendship.where(followed: current_user)
    @open_friendships = @friendships.where(accepted: false)
    @friendship = Friendship.new
  end
end
