class AddInactiveDateToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :inactive_date, :date
  end
end
