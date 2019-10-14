class AddServiceStartToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :service_start, :date
  end
end
