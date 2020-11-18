class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
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
  end
end
