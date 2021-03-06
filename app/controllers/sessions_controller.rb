class SessionsController < ApplicationController
  def new
  end

  # def sign_in(user)
  #   # cookies.permanent[:remember_token] = user.remember_token
  #   self.current_user = user
  # end

  def create

    stylist = Stylist.find_by_stylist_email(params[:stylist_email])
    if stylist && stylist.authenticate(params[:password])
      session[:user_id] = stylist.id
      redirect_to stylist_path(stylist)
    else
      flash[:alert] = "Oops. Please check your signin or password and try again."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end











