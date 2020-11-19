class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page = true
    @challenges = Challenge.first(3)
    @tips = Tip.last(3)
    @show_page = true
  end

end
