class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to stylist_client_path(@client)
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update_attributes(params[:client])
      redirect_to stylist_client_path(@client)
  end

  def show
    @client = Client.find(params[:id])
  end

  def destroy
    Client.find(params[:id]).destroy
    # redirect_to clients_path
    redirect_to stylist_clients_path
  end
end
