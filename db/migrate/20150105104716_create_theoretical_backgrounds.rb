class CreateTheoreticalBackgrounds < ActiveRecord::Migration
  def change
    create_table :theoretical_backgrounds do |t|
      t.integer :id
      t.string :link
      t.string :pdf
      t.string :title

      t.timestamps
    end
  end
end
