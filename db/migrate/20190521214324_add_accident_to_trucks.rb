class AddAccidentToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :accident, :date
  end
end
