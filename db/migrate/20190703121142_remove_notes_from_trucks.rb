class RemoveNotesFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :notes, :text
  end
end
