class TipsController < ApplicationController
  def index
    @tip_month = Tip.last
    @categories = Category.all
    if params[:query].present?
      @tips = Tip.pg_search(params[:query])
      @placeholder = params[:query]
    else
      @tips = Tip.includes(:category).all
      @placeholder = "Search for a tip"
    end
  end

  def show
    @tip = Tip.find(params[:id])
    @show_page = true
    @tips = Tip.all
  end
end
