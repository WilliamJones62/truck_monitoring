class AddDeptManagerToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dept_manager, :boolean
  end
end
