class TipsController < ApplicationController
  def index
    @categories = Category.all
    if params[:query].present?
      @tips = Tip.pg_search(params[:query])
    else
      @tips = Tip.includes(:category).all
  end
end

  def show
    @tip = Tip.find(params[:id])
    @show_page = true
  end

  private

  def book_params
    params.require(:tip).permit(:title, :category_id, :description)
  end

end
