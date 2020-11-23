class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page = true
    @challenges = Challenge.first(3)
    @tips = Tip.all
    @show_page = true
    @invites = Invite.where(invitee_id: current_user)
    @open_invites = @invites.where(accepted: false)
    @user_challenges = UserChallenge.where(user_id: current_user&.id)
    @ongoing_challenges = @user_challenges.where(status: "in_progress")
  end

end
