class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
    @categories = Category.all
  end

  def show
    @challenge = Challenge.find(params[:id])
    @show_page = true
    @show_challenge = show_challenge?
  end

  private

  def show_challenge?
    user_challenges = UserChallenge.where(user_id: current_user.id)
    user_challenge = user_challenges.find_by(challenge_id: params[:id])
    user_challenge&.status == "in_progress"
  end
end
