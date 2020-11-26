class UsersController < ApplicationController
  def show
    @show_page = true
    @user = User.find(params[:id])
    @user_challenges = UserChallenge.where(user_id: current_user.id)
    @done_challenges = @user_challenges.where(status: "completed")

    @total = 0
    @done_challenges.each do |user_chall|
      @total = @total + user_chall.challenge.points
    end

    @ongoing_challenges = @user_challenges.where(status: "in_progress")
    @user_footprint = Footprint.find_by(user_id: current_user.id)
    @score = @user_footprint&.score
    @friendships = Friendship.where(accepted: true)
    @followers_count = @friendships.where(followed_id: params[:id]).length
    @following_count = @friendships.where(follower_id: params[:id]).length

    @current_follower = @friendships.where(follower_id: current_user.id)
    @followed_user = @current_follower.find_by(followed_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :photo)
  end

end
