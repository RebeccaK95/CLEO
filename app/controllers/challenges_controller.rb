class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.includes(:category).all
    @categories = Category.all
    if params[:query].present?
      @challenges = Challenge.pg_search(params[:query])
    else
      @challenges = Challenge.all
    end
  end

  def show
    @challenge = Challenge.find(params[:id])
    @show_page = true
    @challenge_started = challenge_started?
    # @challenge_inprogress = challenge_inprogress?
    @challenge_completed = challenge_completed?
  end

  private

  def challenge_started?
    user_challenges = UserChallenge.where(user_id: current_user.id)
    user_challenge = user_challenges.find_by(challenge_id: params[:id])
    user_challenge&.status == "in_progress"
  end

  # def challenge_inprogress?
  # challenge_steps = challenge.points.count
  # if steps < challenge_steps do
  #   user_progression = (challenge_steps / 100) * 100 
  #   user_challenge.mark_challenge_as_inprogress
  #   user_challenge.save
  # else
  # end

  def challenge_completed?
    user_challenges = UserChallenge.where(user_id: current_user.id)
    user_challenge = user_challenges.find_by(challenge_id: params[:id])
    user_challenge&.status == "completed"
  end
end
