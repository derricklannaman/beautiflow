class ApplicationController < ActionController::Base
  protect_from_forgery



  private

  def authenticate_user
    if session[:user_id]
      @authenticated_user = Stylist.find(session[:user_id])
    else
      @authenticated_user = nil
    end
  end
end
