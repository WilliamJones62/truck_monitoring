class AddMaintDateToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :maint_date, :date
  end
end
