class AddWexcardToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :wexcard, :string
  end
end
