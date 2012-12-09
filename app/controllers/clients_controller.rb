class ClientsController < ApplicationController
  before_filter :get_stylist, :authenticate_user
      # see stylist_helper.rb for get_stylist

  def index
    @clients = @stylist.clients.all
  end

  def new
    @client = @stylist.clients.new
  end

  def create
    @client = @stylist.clients.new(params[:client])

    if @client.save
      redirect_to stylist_client_path(@stylist, @client)
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
    flash[:notice] = "Client deleted"
    redirect_to stylist_clients_path
  end

  private

  def get_stylist
    @stylist = Stylist.find(params[:stylist_id])
  end

end







