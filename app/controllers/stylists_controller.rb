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
      flash[:alert] = "Welcome #{@stylist.first_name}, you have successfully created your account."
      session[:user_id] = @stylist.id
        redirect_to stylist_path(@stylist)

     Notifications.welcome_email(@stylist).deliver

    else
      # flash[:alert] = "Oops! Something went wrong. Please try again."
      render :new
    end
  end

  def show
    @stylist = Stylist.find(params[:id])

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
    flash[:alert] = "Account deleted!"
      redirect_to root_path
  end

   # def new_profile
   #    @profile = Stylist.find(params[:id]).new
   # end

   # def show_profile
   #    @stylist = Stylist.find(params[:id])
   # end


end




