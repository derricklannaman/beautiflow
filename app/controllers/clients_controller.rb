class ClientsController < ApplicationController
  def index
    stylist = Stylist.find(params[:stylist_id])
    @clients = stylist.clients
  end

  def new
    @stylist = Stylist.find(params[:stylist_id])
    @client = @stylist.clients.new
  end

  def create
    @stylist = Stylist.find(params[:stylist_id])
    @client = Client.new(params[:client])
    if @client.save
      redirect_to stylist_client_path(@stylist, @client)
    else
      render :new
    end
  end

  def edit
    @stylist = Stylist.find(params[:stylist_id])
    @client = Client.find(params[:id])
  end

  def update
    @stylist = Stylist.find(params[:stylist_id])
    @client = Client.find(params[:id])
    @client.update_attributes(params[:client])
      redirect_to stylist_client_path(@client)
  end

  def show
    @stylist = Stylist.find(params[:stylist_id])
    @client = Client.find(params[:id])
  end

  def destroy
    Client.find(params[:id]).destroy
    redirect_to stylist_clients_path
  end
end
