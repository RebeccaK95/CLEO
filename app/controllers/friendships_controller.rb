class FriendshipsController < ApplicationController

  def index
    @friendships = Friendship.where(accepted: true)
    @followers = current_user.followers
    @followeds = current_user.followeds
    @friendship = Friendship.new(follower_id: current_user.id)

  end

  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.new(friendship_params)
    @friendship.follower_id = current_user.id
    if @friendship.save
      redirect_to root_path
    end
  end

  def update
    friendship = Friendship.find(params[:id])
    friendship.mark_as_accepted
    if friendship.save
      redirect_to root_path
    end
  end

  def destroy
    friendship = Friendship.find(params[:id])
    friendship.delete
    redirect_to root_path
  end

  private

  def friendship_params
    params.require(:friendship).permit(:follower_id, :followed_id)
  end
end
