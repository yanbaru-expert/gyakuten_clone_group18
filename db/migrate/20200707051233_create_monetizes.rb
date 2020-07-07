class CreateMonetizes < ActiveRecord::Migration[6.0]
  def change
    create_table :monetizes do |t|
      t.string :category
      t.string :title
      t.string :url
      t.timestamps
    end
  end
end
