# class ProfilesController < ApplicationController

#   def index
#     render :new
#   end

#   def new
#     @profile = Profile.new
#   end

#   def create
#     @profile = Profile.new(params[:profile])
#     if @profile.save
#       flash[:notice] = "Your full profile has been created."
#       redirect_to profile_path
#     else
#       render :new
#     end
#   end

#   def edit
#     @profile = Profile.find(params[:id])
#   end

#   def update
#     @profile = Profile.find(params[:id])
#     @profile.update_attributes(params[:profile])
#      redirect_to profile_path(@profile)
#   end

#   def show
#     @profile = Profile.find(params[:id])
#   end

#   def destroy
#     @profile = Profile.find(params[:id])
#     @profile.destroy
#     flash[:notice] = "Account deleted!"
#   end

# end