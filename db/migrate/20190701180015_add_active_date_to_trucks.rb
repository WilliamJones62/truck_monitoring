class AddActiveDateToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :active_date, :date
  end
end
