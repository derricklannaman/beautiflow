class StylistsController < ApplicationController

  def index
    @stylists = Stylist.all
  end

  def new
    @stylist = Stylist.new
  end

  def create
    @stylist = Stylist.new(params[:stylist])
    if @stylist.save
      flash[:notice] = "Welcome #{@stylist.first_name}, you have successfully created your account."
      session[:user_id] = @stylist.id
        redirect_to stylist_path(@stylist)
    else
      flash[:notice] = "Oops! Something went wrong. Please try again."
      render :new
    end
  end

  def show
    @stylist = Stylist.find(params[:id])

    # Notifications.welcome_email(@stylist).deliver
  end

  def edit
    @stylist = Stylist.find(params[:id])
  end

  def update
    @stylist = Stylist.find(params[:id])
    @stylist.update_attributes(params[:stylist])
      redirect_to stylist_path(@stylist)
  end

  def destroy
    Stylist.find(params[:id]).destroy
    flash[:notice] = "Account deleted!"
      redirect_to root_path
  end

  def profile
     @stylist = @authenticated_user
  end


end




