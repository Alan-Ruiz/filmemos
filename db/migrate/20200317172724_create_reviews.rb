class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :content
      t.string :users_id

      t.timestamps
    end
  end
end
