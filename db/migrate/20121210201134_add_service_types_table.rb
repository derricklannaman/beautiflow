class AddServiceTypesTable < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.string :service_name
      t.string :service_cost

      t.timestamps
    end
  end

end
