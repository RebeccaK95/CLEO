class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end
#     if params[:query].present?
#       @tips = Tip.pg_search(params[:query])
#     else
#       @tips = Tip.all
#     end
#   end

  def show
    @tip = Tip.find(params[:id])
  end

  private

  def book_params
    params.require(:tip).permit(:title, :category_id, :description)
  end  
    
end
