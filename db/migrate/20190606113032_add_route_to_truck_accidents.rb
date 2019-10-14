class AddRouteToTruckAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :truck_accidents, :route, :string
  end
end
