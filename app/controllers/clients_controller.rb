class ClientsController < ApplicationController

  def index
    # @clients = @authenticated_user.clients.all
    @clients = @authenticated_user.clients.order("clients.last_name ASC")

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
      redirect_to stylist_clients_path(@authenticated_user)
  end

  def show
    @stylist = @authenticated_user
    @client = Client.find(params[:id])
  end

  def destroy
    @client = Client.find(params[:id])

    @client.destroy

    # flash[:notice] = "Client deleted"
    redirect_to stylist_clients_path(@authenticated_user, @client)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: params}
    end
  end


end







