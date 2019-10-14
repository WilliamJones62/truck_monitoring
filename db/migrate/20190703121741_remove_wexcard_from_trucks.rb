class RemoveWexcardFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :wexcard, :string
  end
end
