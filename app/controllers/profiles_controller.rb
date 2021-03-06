class ProfilesController < ApplicationController

  def index
  end

  def new
    @profile = Profile.new
  end

  def create
    # @stylist = Stylist.find(params[:id])
    @profile = Profile.new(params[:profile])
    if @profile.save
      flash[:alert] = "Your full profile has been created."
      redirect_to @profile
    else
      render :new
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update_attributes(params[:profile])
     redirect_to profile_path(@profile)
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    flash[:alert] = "Account deleted!"
  end

end