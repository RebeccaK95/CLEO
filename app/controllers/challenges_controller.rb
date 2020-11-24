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
    if @challenge_started 
      user_challenges = UserChallenge.where(user_id: current_user.id)
      @user_challenge = user_challenges.find_by(challenge_id: params[:id])
      @challenge_steps = @challenge.challenge_steps
      @value = @user_challenge.user_challenge_steps.where(status:"completed").count.to_f / @challenge_steps.count.to_f * 100 
    end 
    @challenge_steps = ChallengeStep.where(challenge_id: params[:id])
    @challenge_completed = challenge_completed?
  end

  private

  def challenge_started?
    user_challenges = UserChallenge.where(user_id: current_user.id)
    user_challenge = user_challenges.find_by(challenge_id: params[:id])
    user_challenge&.status == "in_progress"
  end

  def challenge_completed?
    user_challenges = UserChallenge.where(user_id: current_user.id)
    user_challenge = user_challenges.find_by(challenge_id: params[:id])
    user_challenge&.status == "completed"
  end

end
