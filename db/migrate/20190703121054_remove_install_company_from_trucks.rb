class RemoveInstallCompanyFromTrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :trucks, :install_company, :string
  end
end
