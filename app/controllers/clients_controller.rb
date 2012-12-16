class ClientsController < ApplicationController

  def index
    @clients = @authenticated_user.clients.all
  end

  def new
    @client = @authenticated_user.clients.new
  end

  def create
    @client = @authenticated_user.clients.new(params[:client])

    if @client.save
      redirect_to stylist_client_path(@authenticated_user, @client)
    else
      render :new
    end
  end

  def edit
    @stylist = @authenticated_user
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update_attributes(params[:client])
      redirect_to stylist_client_path(@client)
  end

  def show
    @stylist = @authenticated_user
    @client = Client.find(params[:id])
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    flash[:notice] = "Client deleted"

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: params}
    end
  end

  def client_list

  end

end







