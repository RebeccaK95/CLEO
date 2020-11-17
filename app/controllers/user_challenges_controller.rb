class UserChallengesController < ApplicationController
  def create
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge = UserChallenge.new
    @user_challenge.challenge = @challenge
    @user_challenge.user = current_user
    @user_challenge.status = "in_progress"

    if @user_challenge.save
      redirect_to challenge_path(@challenge)
    else
      render "challenges/show"
    end
  end

  def update
    user_challenge = UserChallenge.find(params[:id])
    user_challenge.update_status_to_completed.save
    redirect_to challenge_path(user_challenge.challenge)
  end
end
