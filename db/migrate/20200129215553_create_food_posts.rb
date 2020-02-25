class CreateFoodPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :food_posts do |t|
      t.string :name
      t.string :image
      t.float :calories
      t.float :fat
      t.float :protein
      t.float :carbs
      t.float :potassium
      t.float :sugar
      t.float :sodium
      t.float :saturated_fat
      t.float :dietary_fiber
      t.float :cholesterol
      t.integer :user_id
      t.string :note
      t.date :date
      t.string :time
      t.string :meal

      t.timestamps
    end
  end
end
