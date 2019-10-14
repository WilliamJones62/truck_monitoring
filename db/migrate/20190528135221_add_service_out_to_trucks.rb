class AddServiceOutToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :service_out, :date
  end
end
