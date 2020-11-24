class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page = true
    # Score
    @user_footprint = Footprint.find_by(user_id: current_user.id)
    @score = @user_footprint&.score
    # User challenges (my challenges)
    @user_challenges = UserChallenge.where(user_id: current_user&.id)
    # Tips
    @tips = Tip.all
    # Invitations
    @invites = Invite.where(invitee_id: current_user)
    @open_invites = @invites.where(accepted: false)
  end
end
