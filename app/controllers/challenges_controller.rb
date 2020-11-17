class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
    @categories = Category.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end
end
