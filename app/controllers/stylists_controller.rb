class StylistsController < ApplicationController

  before_filter :authenticate_user, :only => [:show, :edit, :update, :delete]

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
      # sign_in @stylist
        redirect_to stylist_path(@stylist)
    else
      flash[:notice] = "Oops! Something went wrong. Please try again."
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
    flash[:notice] = "Account deleted!"
      redirect_to root_path
  end
end
