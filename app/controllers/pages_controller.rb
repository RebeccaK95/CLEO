class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page = true
    @challenges = Challenge.first(3)
    @tips = Tip.last(3)
    @show_page = true
    @invites = Invite.where(invitee_id: current_user)
    @open_invites = @invites.where(accepted: false)
  end

end
