class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.find[:id]
    if @service.save
     redirect_to stylist_services_path(@stylist)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def delete
  end


end
