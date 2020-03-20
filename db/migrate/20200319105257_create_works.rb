class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :address
      t.boolean :available
      t.integer :price
      t.text :description
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.float :long
      t.float :lat


      t.timestamps
    end
  end
end
