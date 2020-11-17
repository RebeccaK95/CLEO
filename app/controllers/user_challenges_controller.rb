class UserChallengesController < ApplicationController
  def create
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge = UserChallenge.new(user_challenge_params)
    @user_challenge.challenge = @challenge
    @user_challenge.user = current_user
    @user_challenge.status = "in_progress"

    if @user_challenge.save
      redirect_to challenge_path(@user_challenge.user)
    else
      render "challenges/show"
    end
  end

  def update
    user_challenge = UserChallenge.find(params[:id])
    user_challenge.update(status: "completed")
    redirect_to
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:status, :user_id, :challenge_id)
  end
end
