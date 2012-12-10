class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new
      if @service.save
        flash[:notice] = "You have successfully added a new service."
        redirect_to services_path
      else
        flash[:notice] = "Sorry, your service wasn't added. Please try again."
        render :new
      end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def show
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update_attributes(params[:service])
      redirect_to services_path
  end

  def delete
    @service = Service.find(params[:id]).destroy
  end


end
