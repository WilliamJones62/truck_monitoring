class AddMakeModelToTrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :trucks, :make_model, :string
  end
end
