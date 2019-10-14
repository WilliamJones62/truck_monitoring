class AddRegisteredToToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :registered_to, :string
  end
end
