class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def home
    @home_page = true
  end

end
