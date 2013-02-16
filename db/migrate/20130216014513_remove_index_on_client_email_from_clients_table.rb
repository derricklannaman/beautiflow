class RemoveIndexOnClientEmailFromClientsTable < ActiveRecord::Migration
  def change
    remove_index :clients, :name => :index_clients_on_client_email
  end

end
