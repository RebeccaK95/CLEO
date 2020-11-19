class FootprintController < ApplicationController

  def new
    @footprint = Footprint.new
  end

  def create
    @footprint = Footprint.new 
    @footprint.user = current_user   
    if @footprint.save
      redirect_to user_path(@user)
    else
      render "pages/home"
    end
  end
end 
