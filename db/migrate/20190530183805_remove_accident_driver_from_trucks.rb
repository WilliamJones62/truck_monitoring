class RemoveAccidentDriverFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :accident_driver, :string
  end
end
