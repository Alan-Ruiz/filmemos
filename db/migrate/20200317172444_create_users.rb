class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :city
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
