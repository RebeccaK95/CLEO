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

  def update
    invite = Invite.find(params[:id])
    invite.mark_as_accepted
    invite.save
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge = UserChallenge.new
    @user_challenge.challenge = @challenge
    @user_challenge.user = current_user

    if @user_challenge.save
      redirect_to challenge_path(@challenge)
    else
      render "challenges/show"
    end

    @challenge_steps = ChallengeStep.where(challenge_id: @challenge)
    @challenge_steps.each do |step|
      @user_challenge_steps = UserChallengeStep.create(user_challenge_id: @user_challenge.id, challenge_step_id: step.id, status: "not done yet")
    end
  end

  def destroy
    invite = Invite.find(params[:id])
    invite.delete
    redirect_to root_path
  end

private

  def invite_params
    params.require(:invite).permit(:invitee_id, :challenge_id)
  end

end

