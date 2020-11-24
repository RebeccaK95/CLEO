class TipsController < ApplicationController
  def index
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
  end
end
