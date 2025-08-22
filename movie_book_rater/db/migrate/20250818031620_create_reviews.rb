class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :body
      t.string :reviewer_name
      t.references :reviewable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
