class InvitesController < ApplicationController

  def new
    @challenge = Challenge.find(params[:challenge_id])
    @users = User.all
    @invite = Invite.new
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @invite = Invite.new(invite_params)
    @invite.challenge = @challenge
    @invite.inviter_id = current_user.id

     if @invite.save
      redirect_to challenge_path(@challenge)
    else
      render "challenges/show"
    end
  end

private

  def invite_params
    params.require(:invite).permit(:invitee_id, :challenge_id)
  end

end

