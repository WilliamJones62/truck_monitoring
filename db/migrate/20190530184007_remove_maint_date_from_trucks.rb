class RemoveMaintDateFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :maint_date, :date
  end
end
