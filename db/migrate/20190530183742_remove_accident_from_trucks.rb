class RemoveAccidentFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :accident, :date
  end
end
