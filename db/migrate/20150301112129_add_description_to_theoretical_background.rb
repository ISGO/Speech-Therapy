class AddDescriptionToTheoreticalBackground < ActiveRecord::Migration
  def change
    add_column :theoretical_backgrounds, :description, :string
  end
end
