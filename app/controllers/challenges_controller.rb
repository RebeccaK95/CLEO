class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.includes(:category).all
    @categories = Category.all
    if params[:query].present?
      @challenges = Challenge.pg_search(params[:query])
      @placeholder = params[:query]
    else
      @challenges = Challenge.all
      @placeholder = "Search for a challenge"
    end
  end

  def show
    @challenge = Challenge.find(params[:id])
    @show_page = true
    @challenge_started = challenge_started?
    if @challenge_started != nil
      user_challenges = UserChallenge.where(user_id: current_user.id)
      @user_challenge = user_challenges.find_by(challenge_id: params[:id])
    end
    @challenge_steps = ChallengeStep.where(challenge_id: params[:id])
    @challenge_completed = challenge_completed?

    @users = User.all
    @invite = Invite.new

    @challenges_count = UserChallenge.where(challenge_id: params[:id]).length

    @invites_count = Invite.where(inviter_id: current_user.id)
    @invites_challenge = @invites_count.where(challenge_id: params[:id])
    @friends = @invites_challenge.where(accepted: true).length
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
