class UsersController < ApplicationController
  def show
    @show_page = true
    @user = User.find(params[:id])
    @user_challenges = UserChallenge.where(user_id: current_user.id)
    @done_challenges = @user_challenges.where(status: "completed")
    @ongoing_challenges = @user_challenges.where(status: "in_progress")
    @user_footprint = Footprint.find_by(user_id: current_user.id)
    @score = @user_footprint&.score
    @friendships = Friendship.where(accepted: true)
    @followers_count = @friendships.where(followed_id: params[:id]).length
    @following_count = @friendships.where(follower_id: params[:id]).length
  end
end
