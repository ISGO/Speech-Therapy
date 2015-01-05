class AddNewColumnToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :address, :string
    add_column :patients, :phone, :string
  end
end
