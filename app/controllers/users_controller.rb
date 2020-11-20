class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_challenges = UserChallenge.where(user_id: current_user.id)
    @done_challenges = @user_challenges.where(status: "completed")
    @ongoing_challenges = @user_challenges.where(status: "in_progress")
    @user_footprint = Footprint.find_by(user_id: current_user.id)
  end
end
