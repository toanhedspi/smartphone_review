class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :star
      t.integer :user_id
      t.integer :review_id

      t.timestamps null: false
    end
  end
end
