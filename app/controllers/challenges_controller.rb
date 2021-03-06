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
    if @challenge_started
      user_challenges = UserChallenge.where(user_id: current_user.id)
      @user_challenge = user_challenges.find_by(challenge_id: params[:id])
      @challenge_steps = @challenge.challenge_steps
      @value = @user_challenge.user_challenge_steps.where(status:"completed").count.to_f / @challenge_steps.count.to_f * 100
      @value = @value.floor
    end

    @challenge_steps = ChallengeStep.where(challenge_id: params[:id])
    @challenge_completed = challenge_completed?

    @users = Friendship.where(followed: current_user.id)
    @invite = Invite.new

    @participants_count = participants_count + @challenge.participant_base

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

  def participants_count
    user_challenges = UserChallenge.where(challenge_id: params[:id])
    open_user_challenges_count = user_challenges.where(status: "in_progress").length
    return open_user_challenges_count
  end
end
