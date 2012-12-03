module ClientsHelper

  def client_since
    @client.created_at.strftime("%B%e, %Y")
  end

end
