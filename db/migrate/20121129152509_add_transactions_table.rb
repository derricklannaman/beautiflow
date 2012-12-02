class AddTransactionsTable < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :client_id
      t.integer :service_id
      t.date :date
      t.decimal :sales

      t.timestamps
    end
  end
end
