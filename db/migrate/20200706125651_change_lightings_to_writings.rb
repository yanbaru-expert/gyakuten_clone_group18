class ChangeLightingsToWritings < ActiveRecord::Migration[6.0]
  def change
    rename_table :lightings, :writings
  end
end
