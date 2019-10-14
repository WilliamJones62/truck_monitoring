class AddServiceFlagToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :service_flag, :boolean
  end
end
