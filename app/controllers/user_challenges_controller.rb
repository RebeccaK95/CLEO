class UserChallengesController < ApplicationController
  def create
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge = UserChallenge.new
    @user_challenge.challenge = @challenge
    @user_challenge.user = current_user

    if @user_challenge.save
      redirect_to challenge_path(@challenge)
    else
      render "challenges/show"
    end
  end

  def update
    user_challenges = UserChallenge.where(user_id: current_user.id)
    user_challenge = user_challenges.find_by(challenge_id: params[:id])
    user_challenge.mark_challenge_as_completed
    user_challenge.save
    footprint = Footprint.find_by(user_id: current_user.id)
    update_score = footprint.score - user_challenge.challenge.points
    footprint.score = update_score
    footprint.save
    redirect_to challenge_path(user_challenge.challenge)
  end
end
